function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.String]
        $PeriodOfflineBeforeAccessCheck,

        [Parameter()]
        [System.String]
        $PeriodOnlineBeforeAccessCheck,

        [Parameter()]
        [System.String]
        $AllowedInboundDataTransferSources,

        [Parameter()]
        [System.String]
        $AllowedOutboundDataTransferDestinations,

        [Parameter()]
        [System.Boolean]
        $OrganizationalCredentialsRequired,

        [Parameter()]
        [System.String]
        $AllowedOutboundClipboardSharingLevel,

        [Parameter()]
        [System.Boolean]
        $DataBackupBlocked,

        [Parameter()]
        [System.Boolean]
        $DeviceComplianceRequired,

        [Parameter()]
        [System.String]
        $ManagedBrowser,

        [Parameter()]
        [System.String]
        $MinimumRequiredAppVersion,

        [Parameter()]
        [System.String]
        $MinimumWarningAppVersion,

        [Parameter()]
        [System.String]
        $MinimumRequiredOsVersion,

        [Parameter()]
        [System.String]
        $MinimumWarningOSVersion,

        [Parameter()]
        [System.String]
        $MinimumRequiredSdkVersion,

        [Parameter()]
        [System.Boolean]
        $ManagedBrowserToOpenLinksRequired,

        [Parameter()]
        [System.Boolean]
        $SaveAsBlocked,

        [Parameter()]
        [System.String]
        $PeriodOfflineBeforeWipeIsEnforced,

        [Parameter()]
        [System.Boolean]
        $PinRequired,

        [Parameter()]
        [System.Boolean]
        $DisableAppPinIfDevicePinIsSet,

        [Parameter()]
        [System.UInt32]
        $MaximumPinRetries,

        [Parameter()]
        [System.Boolean]
        $SimplePinBlocked,

        [Parameter()]
        [System.UInt32]
        $MinimumPinLength,

        [Parameter()]
        [System.String]
        $PinCharacterSet,

        [Parameter()]
        [System.String[]]
        $AllowedDataStorageLocations,

        [Parameter()]
        [System.Boolean]
        $ContactSyncBlocked,

        [Parameter()]
        [System.String]
        $PeriodBeforePinReset,

        [Parameter()]
        [System.Boolean]
        $PrintBlocked,

        [Parameter()]
        [System.Boolean]
        $FingerprintBlocked,

        [Parameter()]
        [System.Boolean]
        $FaceIdBlocked,

        [Parameter()]
        [System.String]
        $AppDataEncryptionType,

        [Parameter()]
        [System.String[]]
        $Apps,

        [Parameter()]
        [System.String[]]
        $Assignments,

        [Parameter()]
        [System.String[]]
        $ExcludedGroups,

        [Parameter()]
        [System.String]
        $CustomBrowserProtocol,

        [Parameter(Mandatory = $true)]
        [System.String]
        [ValidateSet('Absent', 'Present')]
        $Ensure = $true,

        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint,

        [Parameter()]
        [Switch]
        $ManagedIdentity
    )
    Write-Verbose -Message "Checking for the Intune iOS App Protection Policy {$DisplayName}"
    $ConnectionMode = New-M365DSCConnection -Workload 'MicrosoftGraph' `
        -InboundParameters $PSBoundParameters

    #Ensure the proper dependencies are installed in the current environment.
    Confirm-M365DSCDependencies

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace 'MSFT_', ''
    $CommandName = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion

    $nullResult = $PSBoundParameters
    $nullResult.Ensure = 'Absent'

    try
    {
        $policyInfo = Get-MgDeviceAppManagementiOSManagedAppProtection -Filter "displayName eq '$DisplayName'" `
            -ErrorAction Stop

        if ($null -eq $policyInfo)
        {
            Write-Verbose -Message "No iOS App Protection Policy {$DisplayName} was found"
            return $nullResult
        }

        $policy = Get-M365DSCintuneAppProtectionPolicyiOS -PolicyId $policyInfo.Id
        Write-Verbose -Message "Found iOS App Protection Policy {$DisplayName}"

        $appsArray = @()
        if ($null -ne $policy.Apps)
        {
            foreach ($app in $policy.Apps)
            {
                $appsArray += $app.mobileAppIdentifier.bundleId
            }
        }

        $assignmentsArray = @()
        if ($null -ne $policy.Assignments)
        {
            $allAssignments = $policy.Assignments.target | Where-Object -FilterScript { $_.'@odata.type' -eq '#microsoft.graph.groupAssignmentTarget' }

            foreach ($assignment in $allAssignments)
            {
                $assignmentsArray += $assignment.groupId
            }
        }

        $exclusionArray = @()
        if ($null -ne $policy.Assignments)
        {
            $allExclusions = $policy.Assignments.target | Where-Object -FilterScript { $_.'@odata.type' -eq '#microsoft.graph.exclusionGroupAssignmentTarget' }

            foreach ($exclusion in $allExclusions)
            {
                $exclusionArray += $exclusion.groupId
            }
        }
        return @{
            DisplayName                             = $policyInfo.DisplayName
            Description                             = $policy.Description
            PeriodOfflineBeforeAccessCheck          = $policy.PeriodOfflineBeforeAccessCheck
            PeriodOnlineBeforeAccessCheck           = $policy.PeriodOnlineBeforeAccessCheck
            AllowedInboundDataTransferSources       = $policy.AllowedInboundDataTransferSources
            AllowedOutboundDataTransferDestinations = $policy.AllowedOutboundDataTransferDestinations
            OrganizationalCredentialsRequired       = $policy.OrganizationalCredentialsRequired
            AllowedOutboundClipboardSharingLevel    = $policy.AllowedOutboundClipboardSharingLevel
            DataBackupBlocked                       = $policy.DataBackupBlocked
            DeviceComplianceRequired                = $policy.DeviceComplianceRequired
            ManagedBrowser                          = $policy.ManagedBrowser
            MinimumRequiredAppVersion               = $policy.MinimumRequiredAppVersion
            MinimumRequiredOsVersion                = $policy.MinimumRequiredOsVersion
            MinimumRequiredSdkVersion               = $policy.MinimumRequiredSDKVersion
            MinimumWarningAppVersion                = $policy.MinimumWarningAppVersion
            MinimumWarningOsVersion                 = $policy.MinimumWarningOsVersion
            ManagedBrowserToOpenLinksRequired       = $policy.ManagedBrowserToOpenLinksRequired
            SaveAsBlocked                           = $policy.SaveAsBlocked
            PeriodOfflineBeforeWipeIsEnforced       = $policy.PeriodOfflineBeforeWipeIsEnforced
            PinRequired                             = $policy.PinRequired
            DisableAppPinIfDevicePinIsSet           = $policy.disableAppPinIfDevicePinIsSet
            MaximumPinRetries                       = $policy.MaximumPinRetries
            SimplePinBlocked                        = $policy.SimplePinBlocked
            MinimumPinLength                        = $policy.MinimumPinLength
            PinCharacterSet                         = $policy.PinCharacterSet
            AllowedDataStorageLocations             = $policy.AllowedDataStorageLocations
            ContactSyncBlocked                      = $policy.ContactSyncBlocked
            PeriodBeforePinReset                    = $policy.PeriodBeforePinReset
            FaceIdBlocked                           = $policy.FaceIdBlocked
            PrintBlocked                            = $policy.PrintBlocked
            FingerprintBlocked                      = $policy.FingerprintBlocked
            AppDataEncryptionType                   = $policy.AppDataEncryptionType
            Assignments                             = $assignmentsArray
            ExcludedGroups                          = $exclusionArray
            CustomBrowserProtocol                   = $policy.CustomBrowserProtocol
            Apps                                    = $appsArray
            Ensure                                  = 'Present'
            Credential                              = $Credential
            ApplicationId                           = $ApplicationId
            ApplicationSecret                       = $ApplicationSecret
            TenantId                                = $TenantId
            CertificateThumbprint                   = $CertificateThumbprint
            Managedidentity                         = $ManagedIdentity.IsPresent
        }
    }
    catch
    {
        try
        {
            Write-Verbose -Message $_
            $tenantIdValue = $Credential.UserName.Split('@')[1]
            Add-M365DSCEvent -Message $_ -EntryType 'Error' `
                -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
                -TenantId $tenantIdValue
        }
        catch
        {
            Write-Verbose -Message $_
        }
        return $nullResult
    }
}

function Set-TargetResource
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.String]
        $PeriodOfflineBeforeAccessCheck,

        [Parameter()]
        [System.String]
        $PeriodOnlineBeforeAccessCheck,

        [Parameter()]
        [System.String]
        $AllowedInboundDataTransferSources,

        [Parameter()]
        [System.String]
        $AllowedOutboundDataTransferDestinations,

        [Parameter()]
        [System.Boolean]
        $OrganizationalCredentialsRequired,

        [Parameter()]
        [System.String]
        $AllowedOutboundClipboardSharingLevel,

        [Parameter()]
        [System.Boolean]
        $DataBackupBlocked,

        [Parameter()]
        [System.Boolean]
        $DeviceComplianceRequired,

        [Parameter()]
        [System.String]
        $ManagedBrowser,

        [Parameter()]
        [System.String]
        $MinimumRequiredAppVersion,

        [Parameter()]
        [System.String]
        $MinimumWarningAppVersion,

        [Parameter()]
        [System.String]
        $MinimumRequiredOsVersion,

        [Parameter()]
        [System.String]
        $MinimumWarningOsVersion,

        [Parameter()]
        [System.String]
        $MinimumRequiredSdkVersion,

        [Parameter()]
        [System.Boolean]
        $ManagedBrowserToOpenLinksRequired,

        [Parameter()]
        [System.Boolean]
        $SaveAsBlocked,

        [Parameter()]
        [System.String]
        $PeriodOfflineBeforeWipeIsEnforced,

        [Parameter()]
        [System.Boolean]
        $PinRequired,

        [Parameter()]
        [System.Boolean]
        $DisableAppPinIfDevicePinIsSet,

        [Parameter()]
        [System.UInt32]
        $MaximumPinRetries,

        [Parameter()]
        [System.Boolean]
        $SimplePinBlocked,

        [Parameter()]
        [System.UInt32]
        $MinimumPinLength,

        [Parameter()]
        [System.String]
        $PinCharacterSet,

        [Parameter()]
        [System.String[]]
        $AllowedDataStorageLocations,

        [Parameter()]
        [System.Boolean]
        $ContactSyncBlocked,

        [Parameter()]
        [System.String]
        $PeriodBeforePinReset,

        [Parameter()]
        [System.Boolean]
        $PrintBlocked,

        [Parameter()]
        [System.Boolean]
        $FingerprintBlocked,

        [Parameter()]
        [System.Boolean]
        $FaceIdBlocked,

        [Parameter()]
        [System.String]
        $AppDataEncryptionType,

        [Parameter()]
        [System.String[]]
        $Apps,

        [Parameter()]
        [System.String[]]
        $Assignments,

        [Parameter()]
        [System.String[]]
        $ExcludedGroups,

        [Parameter()]
        [System.String]
        $CustomBrowserProtocol,

        [Parameter(Mandatory = $true)]
        [System.String]
        [ValidateSet('Absent', 'Present')]
        $Ensure = $true,

        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint,

        [Parameter()]
        [Switch]
        $ManagedIdentity
    )
    $ConnectionMode = New-M365DSCConnection -Workload 'MicrosoftGraph' `
        -InboundParameters $PSBoundParameters

    #Ensure the proper dependencies are installed in the current environment.
    Confirm-M365DSCDependencies

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace 'MSFT_', ''
    $CommandName = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion

    $currentPolicy = Get-TargetResource @PSBoundParameters
    $setParams = $PSBoundParameters
    $setParams.Remove('Ensure') | Out-Null
    $setParams.Remove('Credential') | Out-Null
    if ($Ensure -eq 'Present' -and $currentPolicy.Ensure -eq 'Absent')
    {
        Write-Verbose -Message "Creating new iOS App Protection Policy {$DisplayName}"
        $JsonContent = Get-M365DSCIntuneAppProtectionPolicyiOSJSON -Parameters $PSBoundParameters
        Write-Verbose -Message "JSON: $JsonContent"
        New-M365DSCIntuneAppProtectionPolicyiOS -JSONContent $JsonContent

        $policyInfo = Get-MgDeviceAppManagementiOSManagedAppProtection -Filter "displayName eq '$DisplayName'" `
            -ErrorAction Stop

        $counter = 1
        while ($policyInfo.ID -eq $null -and $counter -le 10)
        {
            Write-Verbose -Message "Waiting $counter second for the policy {$DisplayName} to get created."
            Start-Sleep -Seconds 1
            $policyInfo = Get-MgDeviceAppManagementiOSManagedAppProtection -Filter "displayName eq '$DisplayName'" `
                -ErrorAction Stop
            $counter++
        }
        Write-Verbose -Message "Found Policy with Id {$($policyInfo.Id)}"

        if ($Assignments.Length -gt 0)
        {
            $assignmentJSON = Get-M365DSCIntuneAppProtectionPolicyiOSAssignmentJson -Assignments $Assignments `
                -Exclusions $ExcludedGroups

            Set-M365DSCIntuneAppProtectionPolicyiOSAssignment -JsonContent $assignmentJSON `
                -PolicyId $policyInfo.Id
        }
    }
    elseif ($Ensure -eq 'Present' -and $currentPolicy.Ensure -eq 'Present')
    {
        Write-Verbose -Message "Updating existing iOS App Protection Policy {$DisplayName}"
        $policyInfo = Get-MgDeviceAppManagementiOSManagedAppProtection -Filter "displayName eq '$DisplayName'" `
            -ErrorAction Stop

        $JsonContent = Get-M365DSCIntuneAppProtectionPolicyiOSJSON -Parameters $PSBoundParameters `
            -IncludeApps $false
        Set-M365DSCIntuneAppProtectionPolicyiOS -JSONContent $JsonContent `
            -PolicyId ($policyInfo.id)

        $appJSON = Get-M365DSCIntuneAppProtectionPolicyiOSAppsJSON -Parameters $PSBoundParameters
        Set-M365DSCIntuneAppProtectionPolicyiOSApps -JSONContent $appJSON `
            -PolicyId $policyInfo.Id

    }
    elseif ($Ensure -eq 'Absent' -and $currentPolicy.Ensure -eq 'Present')
    {
        Write-Verbose -Message "Removing iOS App Protection Policy {$DisplayName}"
        $policyInfo = Get-MgDeviceAppManagementiOSManagedAppProtection -Filter "displayName eq '$DisplayName'" `
            -ErrorAction Stop
        Remove-MgDeviceAppManagementiOSManagedAppProtection -IosManagedAppProtectionId $policyInfo.id
    }
}

function Test-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.String]
        $PeriodOfflineBeforeAccessCheck,

        [Parameter()]
        [System.String]
        $PeriodOnlineBeforeAccessCheck,

        [Parameter()]
        [System.String]
        $AllowedInboundDataTransferSources,

        [Parameter()]
        [System.String]
        $AllowedOutboundDataTransferDestinations,

        [Parameter()]
        [System.Boolean]
        $OrganizationalCredentialsRequired,

        [Parameter()]
        [System.String]
        $AllowedOutboundClipboardSharingLevel,

        [Parameter()]
        [System.Boolean]
        $DataBackupBlocked,

        [Parameter()]
        [System.Boolean]
        $DeviceComplianceRequired,

        [Parameter()]
        [System.String]
        $ManagedBrowser,

        [Parameter()]
        [System.String]
        $MinimumRequiredAppVersion,

        [Parameter()]
        [System.String]
        $MinimumWarningAppVersion,

        [Parameter()]
        [System.String]
        $MinimumRequiredOsVersion,

        [Parameter()]
        [System.String]
        $MinimumWarningOsVersion,

        [Parameter()]
        [System.String]
        $MinimumRequiredSdkVersion,

        [Parameter()]
        [System.Boolean]
        $ManagedBrowserToOpenLinksRequired,

        [Parameter()]
        [System.Boolean]
        $SaveAsBlocked,

        [Parameter()]
        [System.String]
        $PeriodOfflineBeforeWipeIsEnforced,

        [Parameter()]
        [System.Boolean]
        $PinRequired,

        [Parameter()]
        [System.Boolean]
        $DisableAppPinIfDevicePinIsSet,

        [Parameter()]
        [System.UInt32]
        $MaximumPinRetries,

        [Parameter()]
        [System.Boolean]
        $SimplePinBlocked,

        [Parameter()]
        [System.UInt32]
        $MinimumPinLength,

        [Parameter()]
        [System.String]
        $PinCharacterSet,

        [Parameter()]
        [System.String[]]
        $AllowedDataStorageLocations,

        [Parameter()]
        [System.Boolean]
        $ContactSyncBlocked,

        [Parameter()]
        [System.String]
        $PeriodBeforePinReset,

        [Parameter()]
        [System.Boolean]
        $PrintBlocked,

        [Parameter()]
        [System.Boolean]
        $FingerprintBlocked,

        [Parameter()]
        [System.Boolean]
        $FaceIdBlocked,

        [Parameter()]
        [System.String]
        $AppDataEncryptionType,

        [Parameter()]
        [System.String[]]
        $Apps,

        [Parameter()]
        [System.String[]]
        $Assignments,

        [Parameter()]
        [System.String[]]
        $ExcludedGroups,

        [Parameter()]
        [System.String]
        $CustomBrowserProtocol,

        [Parameter(Mandatory = $true)]
        [System.String]
        [ValidateSet('Absent', 'Present')]
        $Ensure = $true,

        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint,

        [Parameter()]
        [Switch]
        $ManagedIdentity
    )
    #Ensure the proper dependencies are installed in the current environment.
    Confirm-M365DSCDependencies

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace 'MSFT_', ''
    $CommandName = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion
    Write-Verbose -Message "Testing configuration of iOS App Protection Policy {$DisplayName}"

    $CurrentValues = Get-TargetResource @PSBoundParameters

    Write-Verbose -Message "Current Values: $(Convert-M365DscHashtableToString -Hashtable $CurrentValues)"
    Write-Verbose -Message "Target Values: $(Convert-M365DscHashtableToString -Hashtable $PSBoundParameters)"

    $ValuesToCheck = $PSBoundParameters

    $TestResult = Test-M365DSCParameterState -CurrentValues $CurrentValues `
        -Source $($MyInvocation.MyCommand.Source) `
        -DesiredValues $PSBoundParameters `
        -ValuesToCheck $ValuesToCheck.Keys

    Write-Verbose -Message "Test-TargetResource returned $TestResult"

    return $TestResult
}

function Export-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.String])]
    param
    (
        [Parameter()]
        [System.String]
        $Filter,

        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint,

        [Parameter()]
        [Switch]
        $ManagedIdentity
    )
    $ConnectionMode = New-M365DSCConnection -Workload 'MicrosoftGraph' `
        -InboundParameters $PSBoundParameters

    #Ensure the proper dependencies are installed in the current environment
    Confirm-M365DSCDependencies

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace 'MSFT_', ''
    $CommandName = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion

    try
    {
        [array]$policies = Get-MgDeviceAppManagementiOSManagedAppProtection -All:$true -Filter $Filter -ErrorAction Stop
        $i = 1
        $dscContent = ''
        if ($policies.Length -eq 0)
        {
            Write-Host $Global:M365DSCEmojiGreenCheckMark
        }
        else
        {
            Write-Host "`r`n" -NoNewline
        }
        foreach ($policy in $policies)
        {
            Write-Host "    |---[$i/$($policies.Count)] $($policy.displayName)" -NoNewline
            $params = @{
                DisplayName           = $policy.displayName
                Ensure                = 'Present'
                Credential            = $Credential
                ApplicationID         = $ApplicationId
                TenantId              = $TenantId
                ApplicationSecret     = $ApplicationSecret
                CertificateThumbprint = $CertificateThumbprint
                Managedidentity       = $ManagedIdentity.IsPresent
            }
            $Results = Get-TargetResource @Params
            $Results = Update-M365DSCExportAuthenticationResults -ConnectionMode $ConnectionMode `
                -Results $Results
            $currentDSCBlock = Get-M365DSCExportContentForResource -ResourceName $ResourceName `
                -ConnectionMode $ConnectionMode `
                -ModulePath $PSScriptRoot `
                -Results $Results `
                -Credential $Credential
            $dscContent += $currentDSCBlock
            Save-M365DSCPartialExport -Content $currentDSCBlock `
                -FileName $Global:PartialExportFileName
            $i++
            Write-Host $Global:M365DSCEmojiGreenCheckMark
        }
        return $dscContent
    }
    catch
    {
        if ($_.Exception -like '*401*')
        {
            Write-Host "`r`n    $($Global:M365DSCEmojiYellowCircle) The current tenant is not registered for Intune."
        }
        else
        {
            Write-Host $Global:M365DSCEmojiRedX
        }
        try
        {
            Write-Verbose -Message $_
            $tenantIdValue = $Credential.UserName.Split('@')[1]

            Add-M365DSCEvent -Message $_ -EntryType 'Error' `
                -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
                -TenantId $tenantIdValue
        }
        catch
        {
            Write-Verbose -Message $_
        }
        return ''
    }
}

function Get-M365DSCIntuneAppProtectionPolicyiOS
{
    [CmdletBinding()]
    [OutputType([PSCustomObject])]
    param(
        [Parameter(Mandatory = $true)]
        [System.String]
        $PolicyId
    )
    try
    {
        $Url = "https://graph.microsoft.com/beta/deviceAppManagement/iosManagedAppProtections('$PolicyId')/`?expand=apps,assignments"
        $response = Invoke-MgGraphRequest -Method Get `
            -Uri $Url
        return $response
    }
    catch
    {
        Write-Verbose -Message $_
        $tenantIdValue = $Credential.UserName.Split('@')[1]
        Add-M365DSCEvent -Message $_ -EntryType 'Error' `
            -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
            -TenantId $tenantIdValue
    }
    return $null
}

function Get-M365DSCIntuneAppProtectionPolicyiOSJSON
{
    [CmdletBinding()]
    [OutputType([System.String])]
    param(
        [Parameter(Mandatory = $true)]
        [System.Collections.Hashtable]
        $Parameters,

        [Parameter()]
        [System.Boolean]
        $IncludeApps = $true
    )

    $JsonContent = "{`r`n    `"@odata.type`": `"#microsoft.graph.iosManagedAppProtection`",`r`n"

    #region AllowedDataStorageLocations
    $allowedDataStorageLocations = '['
    $foundOne = $false
    foreach ($allowedLocation in $Parameters.AllowedDataStorageLocations)
    {
        $foundOne = $true
        $allowedDataStorageLocations += "`r`n`"$allowedLocation`","
    }
    if ($foundOne)
    {
        $allowedDataStorageLocations = $allowedDataStorageLocations.TrimEnd(',') + " `r`n"
    }
    $allowedDataStorageLocations += '],'

    if ($foundOne)
    {
        $JsonContent += "    `"allowedDataStorageLocations`": $allowedDataStorageLocations`r`n"
    }
    #endregion

    #region Apps
    $appsValue = '['
    $foundOne = $false
    foreach ($app in $Parameters.Apps)
    {
        $foundOne = $true

        $appsValue += @"
            `r`n{
                "id":"$($app)",
                "mobileAppIdentifier": {
                    "@odata.type": "#microsoft.graph.iosMobileAppIdentifier",
                    "bundleId": "$app"
                }
            },
"@
    }
    if ($foundOne)
    {
        $appsValue = $appsValue.TrimEnd(',') + " `r`n"
    }
    $appsValue += ']'
    #endregion

    foreach ($key in $Parameters.Keys)
    {
        if ($Parameters.$key -and $key -notin @('Assignments', 'AllowedDataStorageLocations'))
        {
            $JsonContent += "    `"$($key.substring(0,1).ToLower() + $key.substring(1))`": `"$($Parameters.$key.ToString())`",`r`n"
        }
    }
    if ($IncludeApps)
    {
        $JsonContent += "`"apps`":$appsValue`r`n"
    }
    $JsonContent += '}'
    return $JsonContent
}

function Get-M365DSCIntuneAppProtectionPolicyiOSAppsJSON
{
    [CmdletBinding()]
    [OutputType([System.String])]
    param(
        [Parameter(Mandatory = $true)]
        [System.Collections.Hashtable]
        $Parameters
    )

    #region Apps
    $appsValue = '['
    $foundOne = $false
    foreach ($app in $Parameters.Apps)
    {
        $foundOne = $true

        $appsValue += @"
            `r`n{
                "id":"$($app)",
                "mobileAppIdentifier": {
                    "@odata.type": "#microsoft.graph.iosMobileAppIdentifier",
                    "bundleId": "$app"
                }
            },
"@
    }
    if ($foundOne)
    {
        $appsValue = $appsValue.TrimEnd(',') + " `r`n"
    }
    $appsValue += ']'
    #endregion

    $JsonContent = @"
    {
        "apps": $appsValue
    }
"@
    return $JsonContent
}

function Get-M365DSCIntuneAppProtectionPolicyiOSAssignmentJSON
{
    [CmdletBinding()]
    [OutputType([System.String])]
    param(
        [Parameter(Mandatory = $true)]
        [System.String[]]
        $Assignments,

        [Parameter(Mandatory = $false)]
        [System.String[]]
        $Exclusions
    )

    $JsonContent = "{`r`n"
    $JsonContent += "`"assignments`":[`r`n"
    foreach ($assignment in $Assignments)
    {
        $JsonContent += "    {`"target`":{`r`n"
        $JsonContent += "        `"groupId`":`"$assignment`",`r`n"
        $JsonContent += "        `"@odata.type`":`"#microsoft.graph.groupAssignmentTarget`"`r`n"
        $JsonContent += '    }},'
    }
    foreach ($exclusion in $Exclusions)
    {
        $JsonContent += "    {`"target`":{`r`n"
        $JsonContent += "        `"groupId`":`"$exclusion`",`r`n"
        $JsonContent += "        `"@odata.type`":`"#microsoft.graph.exclusionGroupAssignmentTarget`"`r`n"
        $JsonContent += '    }},'
    }
    $JsonContent = $JsonContent.TrimEnd(',')
    $JsonContent += "]`r`n"
    $JsonContent += "`r`n}"

    return $JsonContent
}

function New-M365DSCIntuneAppProtectionPolicyiOS
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [System.String]
        $JSONContent
    )
    try
    {
        $Url = 'https://graph.microsoft.com/beta/deviceAppManagement/managedAppPolicies'
        Write-Verbose -Message "Creating new iOS App Protection policy with JSON payload: `r`n$JSONContent"
        Invoke-MgGraphRequest -Method POST `
            -Uri $Url `
            -Body $JSONContent `
            -Headers @{'Content-Type' = 'application/json' } | Out-Null
    }
    catch
    {
        Write-Verbose -Message $_
        $tenantIdValue = $Credential.UserName.Split('@')[1]
        Add-M365DSCEvent -Message $_ -EntryType 'Error' `
            -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
            -TenantId $tenantIdValue
    }
}

function Set-M365DSCIntuneAppProtectionPolicyiOS
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [System.String]
        $JSONContent,

        [Parameter(Mandatory = $true)]
        [System.String]
        $PolicyId
    )
    try
    {
        $Url = "https://graph.microsoft.com/beta/deviceAppManagement/iosManagedAppProtections('$PolicyId')/"
        Write-Verbose -Message "Updating iOS App Protection policy with JSON payload: `r`n$JSONContent"
        Invoke-MgGraphRequest -Method PATCH `
            -Uri $Url `
            -Body $JSONContent `
            -Headers @{'Content-Type' = 'application/json' } | Out-Null
    }
    catch
    {
        Write-Verbose -Message $_
        $tenantIdValue = $Credential.UserName.Split('@')[1]
        Add-M365DSCEvent -Message $_ -EntryType 'Error' `
            -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
            -TenantId $tenantIdValue
    }
}

function Set-M365DSCIntuneAppProtectionPolicyiOSApps
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [System.String]
        $JSONContent,

        [Parameter(Mandatory = $true)]
        [System.String]
        $PolicyId
    )
    try
    {
        $Url = "https://graph.microsoft.com/beta/deviceAppManagement/managedAppPolicies/$PolicyId/targetApps"
        Write-Verbose -Message "Updating Apps for iOS App Protection policy with JSON payload: `r`n$JSONContent"
        Invoke-MgGraphRequest -Method POST `
            -Uri $Url `
            -Body $JSONContent `
            -Headers @{'Content-Type' = 'application/json' } | Out-Null
    }
    catch
    {
        Write-Verbose -Message $_
        $tenantIdValue = $Credential.UserName.Split('@')[1]
        Add-M365DSCEvent -Message $_ -EntryType 'Error' `
            -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
            -TenantId $tenantIdValue
    }
}

function Set-M365DSCIntuneAppProtectionPolicyiOSAssignment
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [System.String]
        $JSONContent,

        [Parameter(Mandatory = $true)]
        [System.String]
        $PolicyId
    )
    try
    {
        $Url = "https://graph.microsoft.com/beta/deviceAppManagement/iosManagedAppProtections('$PolicyId')/assign"
        Write-Verbose -Message "Group Assignment for iOS App Protection policy with JSON payload: `r`n$JSONContent"
        Invoke-MgGraphRequest -Method POST `
            -Uri $Url `
            -Body $JSONContent `
            -Headers @{'Content-Type' = 'application/json' } | Out-Null
    }
    catch
    {
        Write-Verbose -Message $_
        $tenantIdValue = $Credential.UserName.Split('@')[1]
        Add-M365DSCEvent -Message $_ -EntryType 'Error' `
            -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
            -TenantId $tenantIdValue
    }
}

Export-ModuleMember -Function *-TargetResource
