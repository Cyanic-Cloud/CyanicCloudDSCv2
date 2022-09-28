$local:ErrorActionPreference = "Stop"

Add-Type -Path (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Microsoft.Identity.Client.dll")

function Get-JwtTokenClaims
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory=$true)]
        [string]$JwtToken
    )

    $tokenSplit = $JwtToken.Split(".")
    $claimsSegment = $tokenSplit[1].Replace(" ", "+").Replace("-", "+").Replace('_', '/');
    
    $mod = $claimsSegment.Length % 4
    if ($mod -gt 0)
    {
        $paddingCount = 4 - $mod;
        for ($i = 0; $i -lt $paddingCount; $i++)
        {
            $claimsSegment += "="
        }
    }

    $decodedClaimsSegment = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($claimsSegment))

    return ConvertFrom-Json $decodedClaimsSegment
}


function Get-DefaultAudienceForEndPoint
{
    [CmdletBinding()]
    Param(
        [string] $Endpoint
    )

    $audienceMapping = @{
        "prod" = "https://service.powerapps.com/";
        "preview" = "https://service.powerapps.com/";
        "tip1"= "https://service.powerapps.com/";
        "tip2"= "https://service.powerapps.com/";
        "usgov"= "https://gov.service.powerapps.us/";
        "usgovhigh"= "https://high.service.powerapps.us/";
        "dod" = "https://service.apps.appsplatform.us/";
        "china" = "https://service.powerapps.cn/";
    }

    if ($null -ne $audienceMapping[$Endpoint])
    {
        return $audienceMapping[$Endpoint];
    }

    Write-Verbose "Unknown endpoint $Endpoint. Using https://service.powerapps.com/ as a default";
    return "https://service.powerapps.com/";
}

function Await-Task {
    param (
        [Parameter(ValueFromPipeline=$true, Mandatory=$true)]
        $task
    )

    process {
        while (-not $task.AsyncWaitHandle.WaitOne(200)) { }
        $task.GetAwaiter().GetResult()
    }
}

function Add-PowerAppsAccount
{
    <#
    .SYNOPSIS
    Add PowerApps account.
    .DESCRIPTION
    The Add-PowerAppsAccount cmdlet logins the user or application account and save login information to cache. 
    Use Get-Help Add-PowerAppsAccount -Examples for more detail.
    .PARAMETER Audience
    The service audience which is used for login.
    .PARAMETER Endpoint
    The serivce endpoint which to call. The value can be "prod", "preview", "tip1", "tip2", "usgov", "dod", "usgovhigh", or "china".
    .PARAMETER Username
    The user name used for login.
    .PARAMETER Password
    The password for the user.
    .PARAMETER TenantID
    The tenant Id of the user or application.
    .PARAMETER CertificateThumbprint
    The certificate thumbprint of the application.
    .PARAMETER ClientSecret
    The client secret of the application.
    .PARAMETER ApplicationId
    The application Id.
    .EXAMPLE
    Add-PowerAppsAccount
    Login to "prod" endpoint.
    .EXAMPLE
    Add-PowerAppsAccount -Endpoint "prod" -Username "username@test.onmicrosoft.com" -Password "password"
    Login to "prod" for user "username@test.onmicrosoft.com" by using password "password"
    .EXAMPLE
    Add-PowerAppsAccount `
      -Endpoint "tip1" `
      -TenantID 1a1fbe33-1ff4-45b2-90e8-4628a5112345 `
      -ClientSecret ABCDE]NO_8:YDLp0J4o-:?=K9cmipuF@ `
      -ApplicationId abcdebd6-e62c-4f68-ab74-b046579473ad
    Login to "tip1" for application abcdebd6-e62c-4f68-ab74-b046579473ad in tenant 1a1fbe33-1ff4-45b2-90e8-4628a5112345 by using client secret.
    .EXAMPLE
    Add-PowerAppsAccount `
      -Endpoint "tip1" `
      -TenantID 1a1fbe33-1ff4-45b2-90e8-4628a5112345 `
      -CertificateThumbprint 12345137C1B2D4FED804DB353D9A8A18465C8027 `
      -ApplicationId 08627eb8-8eba-4a9a-8c49-548266012345
    Login to "tip1" for application 08627eb8-8eba-4a9a-8c49-548266012345 in tenant 1a1fbe33-1ff4-45b2-90e8-4628a5112345 by using certificate.
    #>
    [CmdletBinding()]
    param
    (
        [string] $Audience = "https://service.powerapps.com/",

        [Parameter(Mandatory = $false)]
        [ValidateSet("prod","preview","tip1", "tip2", "usgov", "usgovhigh", "dod", "china")]
        [string]$Endpoint = "prod",

        [string]$Username = $null,

        [SecureString]$Password = $null,

        [string]$TenantID = $null,

        [string]$CertificateThumbprint = $null,

        [string]$ClientSecret = $null,

        [string]$ApplicationId = "1950a258-227b-4e31-a9cf-717495945fc2"
    )

    if ($Audience -eq "https://service.powerapps.com/")
    {
        # It's the default audience - we should remap based on endpoint as needed
        $Audience = Get-DefaultAudienceForEndPoint($Endpoint)
    }
    $global:currentSession = $null
    Add-PowerAppsAccountInternal -Audience $Audience -Endpoint $Endpoint -Username $Username -Password $Password -TenantID $TenantID -CertificateThumbprint $CertificateThumbprint -ClientSecret $ClientSecret -ApplicationId $ApplicationId
}


function Add-PowerAppsAccountInternal
{
    param
    (
        [string] $Audience = "https://service.powerapps.com/",

        [Parameter(Mandatory = $false)]
        [ValidateSet("prod","preview","tip1", "tip2", "usgov", "usgovhigh", "dod", "china")]
        [string]$Endpoint = "prod",

        [string]$Username = $null,

        [SecureString]$Password = $null,

        [string]$TenantID = $null,

        [string]$CertificateThumbprint = $null,

        [string]$ClientSecret = $null,

        [string]$ApplicationId = "1950a258-227b-4e31-a9cf-717495945fc2"
    )

    [string[]]$scopes = "$Audience/.default"

    [Microsoft.Identity.Client.IClientApplicationBase]$clientBase = $null
    [Microsoft.Identity.Client.AuthenticationResult]$authResult = $null

    if ($global:currentSession.loggedIn -eq $true -and $global:currentSession.recursed -ne $true)
    {
        Write-Debug "Already logged in, checking for token for resource $Audience"
        $authResult = $null
        if ($global:currentSession.resourceTokens[$Audience] -ne $null)
        {
            if ($global:currentSession.resourceTokens[$Audience].accessToken -ne $null -and `
                $global:currentSession.resourceTokens[$Audience].expiresOn -ne $null -and `
                $global:currentSession.resourceTokens[$Audience].expiresOn -gt (Get-Date))
            {
                Write-Debug "Token found and value, returning"
                return
            }
            else
            {
                 # Already logged in with an account, silently asking for a token from MSAL which should refresh
                try
                {
                    Write-Debug "Already logged in, silently requesting token from MSAL"
                    $authResult = $global:currentSession.msalClientApp.AcquireTokenSilent($scopes, $global:currentSession.msalAccount).ExecuteAsync() | Await-Task
                }
                catch [Microsoft.Identity.Client.MsalUiRequiredException] 
                {
                    Write-Debug ('{0}: {1}' -f $_.Exception.GetType().Name, $_.Exception.Message)
                }
            }
        }

        if ($authResult -eq $null)
        {
            Write-Debug "No token found, reseting audience and recursing: $Audience"
            # Reset the current audience values and call Add-PowerAppsAccount again
            $global:currentSession.resourceTokens[$Audience] = $null
            $global:currentSession.recursed = $true

            Add-PowerAppsAccountInternal -Audience $Audience -Endpoint $Endpoint -Username $global:currentSession.username -Password $global:currentSession.password -TenantID $global:currentSession.InitialTenantId -CertificateThumbprint $global:currentSession.certificateThumbprint -ClientSecret $global:currentSession.clientSecret -ApplicationId $global:currentSession.applicationId
            $global:currentSession.recursed = $false

            # Afer recursing we can early return
            return
        }
    }
    else
    {
        [string] $jwtTokenForClaims = $null
        [Microsoft.Identity.Client.AzureCloudInstance] $authBaseUri =
            switch ($Endpoint)
                {
                    "usgov" { [Microsoft.Identity.Client.AzureCloudInstance]::AzurePublic }
                    "usgovhigh" { [Microsoft.Identity.Client.AzureCloudInstance]::AzureUsGovernment }
                    "dod"       { [Microsoft.Identity.Client.AzureCloudInstance]::AzureUsGovernment }
                    "china"       { [Microsoft.Identity.Client.AzureCloudInstance]::AzureChina }
                    default     { [Microsoft.Identity.Client.AzureCloudInstance]::AzurePublic }
                };

        [Microsoft.Identity.Client.AadAuthorityAudience] $aadAuthAudience = [Microsoft.Identity.Client.AadAuthorityAudience]::AzureAdAndPersonalMicrosoftAccount
        if ($Username -ne $null -and $Password -ne $null)
        {
            $aadAuthAudience = [Microsoft.Identity.Client.AadAuthorityAudience]::AzureAdMultipleOrgs
        }

        Write-Debug "Using $aadAuthAudience : $Audience : $ApplicationId"

        if (![string]::IsNullOrWhiteSpace($TenantID) -and `
            (![string]::IsNullOrWhiteSpace($ClientSecret) -or ![string]::IsNullOrWhiteSpace($CertificateThumbprint)))
        {
            $options = New-Object -TypeName Microsoft.Identity.Client.ConfidentialClientApplicationOptions
            $options.ClientId = $ApplicationId
            $options.TenantId = $TenantID

            [Microsoft.Identity.Client.IConfidentialClientApplication ]$ConfidentialClientApplication = $null

             if (![string]::IsNullOrWhiteSpace($CertificateThumbprint))
            {
                Write-Debug "Using certificate for token acquisition"
                $clientCertificate = Get-Item -Path Cert:\CurrentUser\My\$CertificateThumbprint
                $ConfidentialClientApplication = [Microsoft.Identity.Client.ConfidentialClientApplicationBuilder ]::Create($ApplicationId).WithCertificate($clientCertificate).Build()
            }
            else
            {
                Write-Debug "Using clientSecret for token acquisition"
                $ConfidentialClientApplication = [Microsoft.Identity.Client.ConfidentialClientApplicationBuilder ]::Create($ApplicationId).WithClientSecret($ClientSecret).Build()
            }

            $authResult = $ConfidentialClientApplication.AcquireTokenForClient($scopes).WithAuthority($authBaseuri, $TenantID, $true).ExecuteAsync() | Await-Task
            $clientBase = $ConfidentialClientApplication
        }
        else 
        {
            [Microsoft.Identity.Client.IPublicClientApplication]$PublicClientApplication = $null
            $PublicClientApplication = [Microsoft.Identity.Client.PublicClientApplicationBuilder]::Create($ApplicationId).WithAuthority($authBaseuri, $aadAuthAudience, $true).WithDefaultRedirectUri().Build()

            if ($Username -ne $null -and $Password -ne $null)
            {
                Write-Debug "Using username, password"
                $authResult = $PublicClientApplication.AcquireTokenByUsernamePassword($scopes, $UserName, $Password).ExecuteAsync() | Await-Task
            }
            else
            {
                Write-Debug "Using interactive login"
                $authResult = $PublicClientApplication.AcquireTokenInteractive($scopes).ExecuteAsync() | Await-Task
            }
            $clientBase = $PublicClientApplication
        }
    }

    if ($authResult -ne $null)
    {
        if (![string]::IsNullOrWhiteSpace($authResult.IdToken))
        {
            $jwtTokenForClaims = $authResult.IdToken
        }
        else
        {
            $jwtTokenForClaims = $authResult.AccessToken
        }

        $claims = Get-JwtTokenClaims -JwtToken $jwtTokenForClaims

        if ($global:currentSession.loggedIn -eq $true)
        {
           Write-Debug "Adding new audience to resourceToken map. Expires $authResult.ExpiresOn"
            # addition of a new token for a new audience
            $global:currentSession.resourceTokens[$Audience] = @{
                accessToken = $authResult.AccessToken;
                expiresOn = $authResult.ExpiresOn;
            };
        }
        else
        {
            Write-Debug "Adding first audience to resourceToken map. Expires $authResult.ExpiresOn"
            $global:currentSession = @{
                loggedIn = $true;
                recursed = $false;
                msalClientApp = $clientBase;
                msalAccount = $authResult.Account;
                upn = $claims.upn;
                InitialTenantId = $TenantID;
                tenantId = $claims.tid;
                userId = $claims.oid;
                applicationId = $ApplicationId;
                username = $Username;
                password = $Password;
                certificateThumbprint = $CertificateThumbprint;
                clientSecret = $ClientSecret;
                resourceTokens = @{
                    $Audience = @{
                        accessToken = $authResult.AccessToken;
                        expiresOn = $authResult.ExpiresOn;
                    }
                };
                selectedEnvironment = "~default";
                flowEndpoint = 
                    switch ($Endpoint)
                    {
                        "prod"      { "api.flow.microsoft.com" }
                        "usgov"     { "gov.api.flow.microsoft.us" }
                        "usgovhigh" { "high.api.flow.microsoft.us" }
                        "dod"       { "api.flow.appsplatform.us" }
                        "china"     { "api.powerautomate.cn" }
                        "preview"   { "preview.api.flow.microsoft.com" }
                        "tip1"      { "tip1.api.flow.microsoft.com"}
                        "tip2"      { "tip2.api.flow.microsoft.com" }
                        default     { throw "Unsupported endpoint '$Endpoint'"}
                    };
                powerAppsEndpoint = 
                    switch ($Endpoint)
                    {
                        "prod"      { "api.powerapps.com" }
                        "usgov"     { "gov.api.powerapps.us" }
                        "usgovhigh" { "high.api.powerapps.us" }
                        "dod"       { "api.apps.appsplatform.us" }
                        "china"     { "api.powerapps.cn" }
                        "preview"   { "preview.api.powerapps.com" }
                        "tip1"      { "tip1.api.powerapps.com"}
                        "tip2"      { "tip2.api.powerapps.com" }
                        default     { throw "Unsupported endpoint '$Endpoint'"}
                    };            
                bapEndpoint = 
                    switch ($Endpoint)
                    {
                        "prod"      { "api.bap.microsoft.com" }
                        "usgov"     { "gov.api.bap.microsoft.us" }
                        "usgovhigh" { "high.api.bap.microsoft.us" }
                        "dod"       { "api.bap.appsplatform.us" }
                        "china"     { "api.bap.partner.microsoftonline.cn" }
                        "preview"   { "preview.api.bap.microsoft.com" }
                        "tip1"      { "tip1.api.bap.microsoft.com"}
                        "tip2"      { "tip2.api.bap.microsoft.com" }
                        default     { throw "Unsupported endpoint '$Endpoint'"}
                    };      
                graphEndpoint = 
                    switch ($Endpoint)
                    {
                        "prod"      { "graph.windows.net" }
                        "usgov"     { "graph.windows.net" }
                        "usgovhigh" { "graph.windows.net" }
                        "dod"       { "graph.windows.net" }
                        "china"     { "graph.windows.net" }
                        "preview"   { "graph.windows.net" }
                        "tip1"      { "graph.windows.net"}
                        "tip2"      { "graph.windows.net" }
                        default     { throw "Unsupported endpoint '$Endpoint'"}
                    };
                cdsOneEndpoint = 
                    switch ($Endpoint)
                    {
                        "prod"      { "api.cds.microsoft.com" }
                        "usgov"     { "gov.api.cds.microsoft.us" }
                        "usgovhigh" { "high.api.cds.microsoft.us" }
                        "dod"       { "dod.gov.api.cds.microsoft.us" }
                        "china"     { "unsupported" }
                        "preview"   { "preview.api.cds.microsoft.com" }
                        "tip1"      { "tip1.api.cds.microsoft.com"}
                        "tip2"      { "tip2.api.cds.microsoft.com" }
                        default     { throw "Unsupported endpoint '$Endpoint'"}
                    };
            };
        }
    }
}


function Test-PowerAppsAccount
{
    <#
    .SYNOPSIS
    Test PowerApps account.
    .DESCRIPTION
    The Test-PowerAppsAccount cmdlet checks cache and calls Add-PowerAppsAccount if user account is not in cache.
    Use Get-Help Test-PowerAppsAccount -Examples for more detail.
    .EXAMPLE
    Test-PowerAppsAccount
    Check if user account is cached.
    #>
    [CmdletBinding()]
    param
    (
    )

    if (-not $global:currentSession -or $global:currentSession.loggedIn -ne $true)
    {
        Add-PowerAppsAccountInternal
    }
}

function Remove-PowerAppsAccount
{
    <#
    .SYNOPSIS
    Remove PowerApps account.
    .DESCRIPTION
    The Remove-PowerAppsAccount cmdlet removes the user or application login information from cache.
    Use Get-Help Remove-PowerAppsAccount -Examples for more detail.
    .EXAMPLE
    Remove-PowerAppsAccount
    Removes the login information from cache.
    #>
    [CmdletBinding()]
    param
    (
    )

    if ($global:currentSession -ne $null -and $global:currentSession.upn -ne $null)
    {
        Write-Verbose "Logging out $($global:currentSession.upn)"
    }
    else
    {
        Write-Verbose "No user logged in"
    }

    $global:currentSession = @{
        loggedIn = $false;
    };
}

function Get-JwtToken
{
    <#
    .SYNOPSIS
    Get user login token.
    .DESCRIPTION
    The Get-JwtToken cmdlet get the user or application login information from cache. It will call Add-PowerAppsAccount if login token expired.
    Use Get-Help Get-JwtToken -Examples for more detail.
    .EXAMPLE
    Get-JwtToken "https://service.powerapps.com/"
    Get login token for PowerApps "prod".
    #>
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory=$true)]
        [string] $Audience
    )

    if ($global:currentSession -eq $null)
    {
        $global:currentSession = @{
            loggedIn = $false;
        };
    }

    Add-PowerAppsAccountInternal -Audience $Audience

    return $global:currentSession.resourceTokens[$Audience].accessToken;
}

function Invoke-OAuthDialog
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory=$true)]
        [string] $ConsentLinkUri
    )

    Add-Type -AssemblyName System.Windows.Forms
    $form = New-Object -TypeName System.Windows.Forms.Form -Property @{ Width=440; Height=640 }
    $web  = New-Object -TypeName System.Windows.Forms.WebBrowser -Property @{ Width=420; Height=600; Url=$ConsentLinkUri }
    $DocComp  = {
        $Global:uri = $web.Url.AbsoluteUri        
        if ($Global:uri -match "error=[^&]*|code=[^&]*")
        {
            $form.Close()
        }
    }
    $web.ScriptErrorsSuppressed = $true
    $web.Add_DocumentCompleted($DocComp)
    $form.Controls.Add($web)
    $form.Add_Shown({$form.Activate()})
    $form.ShowDialog() | Out-Null
    $queryOutput = [System.Web.HttpUtility]::ParseQueryString($web.Url.Query)

    $output = @{}

    foreach($key in $queryOutput.Keys)
    {
        $output["$key"] = $queryOutput[$key]
    }
    
    return $output
}


function Get-TenantDetailsFromGraph
{
    <#
    .SYNOPSIS
    Get my organization tenant details from graph.
    .DESCRIPTION
    The Get-TenantDetailsFromGraph function calls graph and gets my organization tenant details. 
    Use Get-Help Get-TenantDetailsFromGraph -Examples for more detail.
    .PARAMETER GraphApiVersion
    Graph version to call. The default version is "1.6".
    .EXAMPLE
    Get-TenantDetailsFromGraph
    Get my organization tenant details from graph by calling graph service in version 1.6.
    #>
    param
    (
        [string]$GraphApiVersion = "1.6"
    )

    process 
    {
        $TenantIdentifier = "myorganization"

        $route = "https://{graphEndpoint}/{tenantIdentifier}/tenantDetails`?api-version={graphApiVersion}" `
        | ReplaceMacro -Macro "{tenantIdentifier}" -Value $TenantIdentifier `
        | ReplaceMacro -Macro "{graphApiVersion}" -Value $GraphApiVersion;

        $graphResponse = InvokeApi -Method GET -Route $route
        
        if ($graphResponse.value -ne $null)
        {
            CreateTenantObject -TenantObj $graphResponse.value
        }
        else
        {
            return $graphResponse
        }
    }
}

#Returns users or groups from Graph
#wrapper on top of https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/users-operations & https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/groups-operations 
function Get-UsersOrGroupsFromGraph(
)
{
    <#
    .SYNOPSIS
    Returns users or groups from Graph.
    .DESCRIPTION
    The Get-UsersOrGroupsFromGraph function calls graph and gets users or groups from Graph. 
    Use Get-Help Get-UsersOrGroupsFromGraph -Examples for more detail.
    .PARAMETER ObjectId
    User objec Id.
    .PARAMETER SearchString
    Search string.
    .PARAMETER GraphApiVersion
    Graph version to call. The default version is "1.6".
    .EXAMPLE
    Get-UsersOrGroupsFromGraph -ObjectId "12345ba9-805f-43f8-98f7-34fa34aa51a7"
    Get user with user object Id "12345ba9-805f-43f8-98f7-34fa34aa51a7" from graph by calling graph service in version 1.6.
    .EXAMPLE
    Get-UsersOrGroupsFromGraph -SearchString "gfd"
    Get users who's UserPrincipalName starting with "gfd" from graph by calling graph service in version 1.6.
    #>
    [CmdletBinding(DefaultParameterSetName="Id")]
    param
    (
        [Parameter(Mandatory = $true, ParameterSetName = "Id")]
        [string]$ObjectId,

        [Parameter(Mandatory = $true, ParameterSetName = "Search")]
        [string]$SearchString,

        [Parameter(Mandatory = $false, ParameterSetName = "Search")]
        [Parameter(Mandatory = $false, ParameterSetName = "Id")]
        [string]$GraphApiVersion = "1.6"
    )

    Process
    {
        if (-not [string]::IsNullOrWhiteSpace($ObjectId))
        {
            $userGraphUri = "https://graph.windows.net/myorganization/users/{userId}`?&api-version={graphApiVersion}" `
            | ReplaceMacro -Macro "{userId}" -Value $ObjectId `
            | ReplaceMacro -Macro "{graphApiVersion}" -Value $GraphApiVersion;

            $userGraphResponse = InvokeApi -Route $userGraphUri -Method GET
            
            If($userGraphResponse.StatusCode -eq $null)
            {
                CreateUserObject -UserObj $userGraphResponse
            }

            $groupsGraphUri = "https://graph.windows.net/myorganization/groups/{groupId}`?api-version={graphApiVersion}" `
            | ReplaceMacro -Macro "{groupId}" -Value $ObjectId `
            | ReplaceMacro -Macro "{graphApiVersion}" -Value $GraphApiVersion;

            $groupGraphResponse = InvokeApi -Route $groupsGraphUri -Method GET

            If($groupGraphResponse.StatusCode -eq $null)
            {
                CreateGroupObject -GroupObj $groupGraphResponse
            }
        }
        else 
        {
            $userFilter = "startswith(userPrincipalName,'$SearchString') or startswith(displayName,'$SearchString')"
    
            $userGraphUri = "https://graph.windows.net/myorganization/users`?`$filter={filter}&api-version={graphApiVersion}" `
            | ReplaceMacro -Macro "{filter}" -Value $userFilter `
            | ReplaceMacro -Macro "{graphApiVersion}" -Value $GraphApiVersion;

            $userGraphResponse = InvokeApi -Route $userGraphUri -Method GET
    
            foreach($user in $userGraphResponse.value)
            {
                CreateUserObject -UserObj $user
            }

            $groupFilter = "startswith(displayName,'$SearchString')"
    
            $groupsGraphUri = "https://graph.windows.net/myorganization/groups`?`$filter={filter}&api-version={graphApiVersion}" `
            | ReplaceMacro -Macro "{filter}" -Value $groupFilter `
            | ReplaceMacro -Macro "{graphApiVersion}" -Value $GraphApiVersion;

            $groupsGraphResponse = InvokeApi -Route $groupsGraphUri -Method GET
    
            foreach($group in $groupsGraphResponse.value)
            {
                CreateGroupObject -GroupObj $group
            }    
        }
    }
}


function CreateUserObject
{
    param
    (
        [Parameter(Mandatory = $true)]
        [object]$UserObj
    )

    return New-Object -TypeName PSObject `
        | Add-Member -PassThru -MemberType NoteProperty -Name ObjectType -Value $UserObj.objectType `
        | Add-Member -PassThru -MemberType NoteProperty -Name ObjectId -Value $UserObj.objectId `
        | Add-Member -PassThru -MemberType NoteProperty -Name UserPrincipalName -Value $UserObj.userPrincipalName `
        | Add-Member -PassThru -MemberType NoteProperty -Name Mail -Value $UserObj.mail `
        | Add-Member -PassThru -MemberType NoteProperty -Name DisplayName -Value $UserObj.displayName `
        | Add-Member -PassThru -MemberType NoteProperty -Name AssignedLicenses -Value $UserObj.assignedLicenses `
        | Add-Member -PassThru -MemberType NoteProperty -Name AssignedPlans -Value $UserObj.assignedLicenses `
        | Add-Member -PassThru -MemberType NoteProperty -Name Internal -Value $UserObj;
}

function CreateGroupObject
{
    param
    (
        [Parameter(Mandatory = $true)]
        [object]$GroupObj
    )

    return New-Object -TypeName PSObject `
        | Add-Member -PassThru -MemberType NoteProperty -Name ObjectType -Value $GroupObj.objectType `
        | Add-Member -PassThru -MemberType NoteProperty -Name Objectd -Value $GroupObj.objectId `
        | Add-Member -PassThru -MemberType NoteProperty -Name Mail -Value $GroupObj.mail `
        | Add-Member -PassThru -MemberType NoteProperty -Name DisplayName -Value $GroupObj.displayName `
        | Add-Member -PassThru -MemberType NoteProperty -Name Internal -Value $GroupObj;
}


function CreateTenantObject
{
    param
    (
        [Parameter(Mandatory = $true)]
        [object]$TenantObj
    )

    return New-Object -TypeName PSObject `
        | Add-Member -PassThru -MemberType NoteProperty -Name ObjectType -Value $TenantObj.objectType `
        | Add-Member -PassThru -MemberType NoteProperty -Name TenantId -Value $TenantObj.objectId `
        | Add-Member -PassThru -MemberType NoteProperty -Name Country -Value $TenantObj.countryLetterCode `
        | Add-Member -PassThru -MemberType NoteProperty -Name Language -Value $TenantObj.preferredLanguage `
        | Add-Member -PassThru -MemberType NoteProperty -Name DisplayName -Value $TenantObj.displayName `
        | Add-Member -PassThru -MemberType NoteProperty -Name Domains -Value $TenantObj.verifiedDomains `
        | Add-Member -PassThru -MemberType NoteProperty -Name Internal -Value $TenantObj;
}
# SIG # Begin signature block
# MIIjkQYJKoZIhvcNAQcCoIIjgjCCI34CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBtEN64Y3EYDhEc
# y9duy42edESphAdOPSDAOV/vk5UKHaCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
# LpKnSrTQAAAAAAHfMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjAxMjE1MjEzMTQ1WhcNMjExMjAyMjEzMTQ1WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQC2uxlZEACjqfHkuFyoCwfL25ofI9DZWKt4wEj3JBQ48GPt1UsDv834CcoUUPMn
# s/6CtPoaQ4Thy/kbOOg/zJAnrJeiMQqRe2Lsdb/NSI2gXXX9lad1/yPUDOXo4GNw
# PjXq1JZi+HZV91bUr6ZjzePj1g+bepsqd/HC1XScj0fT3aAxLRykJSzExEBmU9eS
# yuOwUuq+CriudQtWGMdJU650v/KmzfM46Y6lo/MCnnpvz3zEL7PMdUdwqj/nYhGG
# 3UVILxX7tAdMbz7LN+6WOIpT1A41rwaoOVnv+8Ua94HwhjZmu1S73yeV7RZZNxoh
# EegJi9YYssXa7UZUUkCCA+KnAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUOPbML8IdkNGtCfMmVPtvI6VZ8+Mw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDYzMDA5MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAnnqH
# tDyYUFaVAkvAK0eqq6nhoL95SZQu3RnpZ7tdQ89QR3++7A+4hrr7V4xxmkB5BObS
# 0YK+MALE02atjwWgPdpYQ68WdLGroJZHkbZdgERG+7tETFl3aKF4KpoSaGOskZXp
# TPnCaMo2PXoAMVMGpsQEQswimZq3IQ3nRQfBlJ0PoMMcN/+Pks8ZTL1BoPYsJpok
# t6cql59q6CypZYIwgyJ892HpttybHKg1ZtQLUlSXccRMlugPgEcNZJagPEgPYni4
# b11snjRAgf0dyQ0zI9aLXqTxWUU5pCIFiPT0b2wsxzRqCtyGqpkGM8P9GazO8eao
# mVItCYBcJSByBx/pS0cSYwBBHAZxJODUqxSXoSGDvmTfqUJXntnWkL4okok1FiCD
# Z4jpyXOQunb6egIXvkgQ7jb2uO26Ow0m8RwleDvhOMrnHsupiOPbozKroSa6paFt
# VSh89abUSooR8QdZciemmoFhcWkEwFg4spzvYNP4nIs193261WyTaRMZoceGun7G
# CT2Rl653uUj+F+g94c63AhzSq4khdL4HlFIP2ePv29smfUnHtGq6yYFDLnT0q/Y+
# Di3jwloF8EWkkHRtSuXlFUbTmwr/lDDgbpZiKhLS7CBTDj32I0L5i532+uHczw82
# oZDmYmYmIUSMbZOgS65h797rj5JJ6OkeEUJoAVwwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVZjCCFWICAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBoDAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgyRZsyk3l
# fJXCh3A8m7s07uNA53FbpUIGAD/lEHIqPz4wNAYKKwYBBAGCNwIBDDEmMCSgEoAQ
# AFQAZQBzAHQAUwBpAGcAbqEOgAxodHRwOi8vdGVzdCAwDQYJKoZIhvcNAQEBBQAE
# ggEAJJNPYYmDKfysOgQyQck+xR+oNHaQksKjmz8eRonq9FTiakhvupChjwbAMA72
# zw9aVStWYFKcXMswm7KCCFtxghBZKnXZ+VDACBhIXdVO4X/yiyH8SvbQsdurglBc
# 2hMpBv3EBIk8iA27lXgURtMmFDUlBUfEnPmConBH/Jat3QBlvUhbdqebTOOIo8WV
# XRb2HMGaoR/f667UvRZjGxgy8yQnk5ctJ054M9ad4tO+kNJYjDN1NiCjmOgTd9ia
# sQnk+ij6zzbVIv/r3i9CPzZUk0WRBwNc+7s6Skg5TZQOli6WiUHh70JDmPBqIHuc
# vTy0hba856jhn7TjnuP4rV4Lr6GCEv4wghL6BgorBgEEAYI3AwMBMYIS6jCCEuYG
# CSqGSIb3DQEHAqCCEtcwghLTAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFZBgsqhkiG
# 9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFlAwQC
# AQUABCC+o1oTGPfFxalOA9q8NcRC8PFW3xNr3Lwa5B7+aU6gwwIGYUi489Q0GBMy
# MDIxMTAwNzIwMTcxMi4zOTRaMASAAgH0oIHYpIHVMIHSMQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFu
# ZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjJB
# RDQtNEI5Mi1GQTAxMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2
# aWNloIIOTTCCBPkwggPhoAMCAQICEzMAAAE485Qh1mG+8CkAAAAAATgwDQYJKoZI
# hvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAO
# BgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEm
# MCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcNMjAxMDE1
# MTcyODIwWhcNMjIwMTEyMTcyODIwWjCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0
# aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoyQUQ0LTRCOTIt
# RkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCCASIw
# DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMW5+KepXnCDMgICo2yu/gP73amP
# staZoFyIzsFxrwwI8u2ij7Kfe/BR/lTx4ft2JPbXNBE9+eeG20u06zm3o2wB/G0N
# 1DKk+7FO/Z5AC8SqspKdpWHyP2b6w1QXnLMG89b//QmXE3a0mopWzQyINZU30gNC
# w4Xm07dNifkeXgma4X13nQliT9ZLdY8tBOcCVK8qmDoV7K4HsBnULHR9m76eSX0Y
# qfr4PK8FQCe/ER220+cU6H/qBSzggIJiRtHtsguzwCLRKyjzFozPOqZFSkemraFS
# rgOaBuHeDVpLYlMyk9m8p8JVZMe+Lruqxe1PuernQsMJNppzYw/jlw4cjxkCAwEA
# AaOCARswggEXMB0GA1UdDgQWBBTf6q3c6O+sU7Ey+zmIxWDBnnHAtTAfBgNVHSME
# GDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBHhkVodHRw
# Oi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNUaW1TdGFQ
# Q0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5o
# dHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0YVBDQV8y
# MDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMI
# MA0GCSqGSIb3DQEBCwUAA4IBAQCjeLBIXAuxvw0SkMvSyLaOTiOVWVIEt0gRWazR
# 7K/2c0eTLGomN3lcZvc2Zm4PpuLrXQovBXFHT0nA+q/BaLXxzt3RfyOq413o/7Bm
# zb+4fB7AT1pi90nvpmfv/yEKxYua5LasbOi0pAj4q5jIWGeoVHyYDeD4LZBv5sKk
# qhdOH++BvANiR8IQ87CwYuDGAWQ0+CiyfSgDoFmQJkuDtzAGMc7H27DdFrIzIAzK
# vAdl6kDcyCxEsJAD0SSll31+9wuiCUuTB1mqxiI/gcoA7OaejNvMOd7Fz1gCjQKr
# e2RgWrKRvpP7d8X1gJvHg+Ap7xCklTPFX369h8BvglIAAqaaMIIGcTCCBFmgAwIB
# AgIKYQmBKgAAAAAAAjANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2Vy
# dGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAx
# MjE0NjU1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYw
# JAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZI
# hvcNAQEBBQADggEPADCCAQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0VBDVpQoA
# goX77XxoSyxfxcPlYcJ2tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEwRA/xYIiE
# VEMM1024OAizQt2TrNZzMFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+B
# VLHPk0ySwcSmXdFhE24oxhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3w
# V3WsvYpCTUBR0Q+cBj5nf/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4GkbaICDXo
# eByw6ZnNPOcvRLqn9NxkvaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEAAaOCAeYw
# ggHiMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7fEYbxTNo
# WoVtVTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBW
# BgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUH
# AQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtp
# L2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0gAQH/BIGV
# MIGSMIGPBgkrBgEEAYI3LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9QS0kvZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIw
# NB4yIB0ATABlAGcAYQBsAF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4A
# dAAuIB0wDQYJKoZIhvcNAQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOhIW+z66bM
# 9TG+zwXiqf76V20ZMLPCxWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS+7lTjMz0
# YBKKdsxAQEGb3FwX/1z5Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlKkVIArzgP
# F/UveYFl2am1a+THzvbKegBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon/VWvL/62
# 5Y4zu2JfmttXQOnxzplmkIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOiPPp/fZZq
# kHimbdLhnPkd/DjYlPTGpQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96
# LjlXdqJxqgaKD4kWumGnEcua2A5HmoDF0M2n0O99g/DhO3EJ3110mCIIYdqwUB5v
# vfHhAN/nMQekkzr3ZUd46PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiF
# AR6A+xuJKlQ5slvayA1VmXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7aKLixqduW
# sqdCosnPGUFN4Ib5KpqjEWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQcdeh0sVV
# 42neV8HR3jDA/czmTfsNv11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+NR4Iuto2
# 29Nfj950iEkSoYIC1zCCAkACAQEwggEAoYHYpIHVMIHSMQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFu
# ZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjJB
# RDQtNEI5Mi1GQTAxMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2
# aWNloiMKAQEwBwYFKw4DAhoDFQBAvOs7NtACp82pLiEhSybKWeaB+aCBgzCBgKR+
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA
# 5QmgGjAiGA8yMDIxMTAwODAwMzQzNFoYDzIwMjExMDA5MDAzNDM0WjB3MD0GCisG
# AQQBhFkKBAExLzAtMAoCBQDlCaAaAgEAMAoCAQACAi/uAgH/MAcCAQACAhL1MAoC
# BQDlCvGaAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEA
# AgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEAoTirdvuLEM6E+nVf
# dxTwrIYFDTrgRBL6IDWEI1FXW5LdeZ1knoz3uRMl/iQt3isIElx9nvw2vtEMNv61
# xzOxtr9s+62q2JXuiPNf3nBSdWbQX6kNgOxlbc5cSemJdmdQGbVapVp6d40qIy9N
# Y5yAWDWp8BPQYruonLU6D/DoGGgxggMNMIIDCQIBATCBkzB8MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGlt
# ZS1TdGFtcCBQQ0EgMjAxMAITMwAAATjzlCHWYb7wKQAAAAABODANBglghkgBZQME
# AgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJ
# BDEiBCA/vzfcBwjLCGRPRAABYU1SmzirxpFDXKrKF4tysGtB0DCB+gYLKoZIhvcN
# AQkQAi8xgeowgecwgeQwgb0EIENAk0r5f0Qqkkhi4iym7u7G0t5o5gjqTvorYe0W
# j4coMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAE4
# 85Qh1mG+8CkAAAAAATgwIgQgS3sx4tGiUaPr9CFB9z5GAETCmJoMC1Ge8ZTn09rD
# MbMwDQYJKoZIhvcNAQELBQAEggEAJHUD/eh8uWGQ4dTcV/LNyUQcruXN6PLCi9ng
# U8iqgz8DF4RMFiqC4286hRvY5S802r8G5YpGalGBO+x2r2NNSB4afKBCIRwE/9t8
# xIXUS+Dikx36RgziaRghCAGHOH0x2MGd3G2YMn8jhAcX7rB7ULhL9spY/Pa3rbZT
# hQsu2qnHyfe+1OB3BLzTtJP34DEr2ANs1qOMzN/qXQFQ+U/GtWJ+Y4+ixzJwDQuY
# ebR2Qa4hurXu0KFyKdPGK0/acro7rXG5THs2H7PtQ+dE/LYgIMDJbrAo1wXOS2Dc
# EYr3A/iZgGn23O+SBkHI+FOBGxKkQtGtVAl3Gh/dIjpHn17rDg==
# SIG # End signature block
