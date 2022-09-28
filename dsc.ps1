# Generated with Microsoft365DSC version 1.22.921.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter()]
    [System.Management.Automation.PSCredential]
    $Credential
)

Configuration dsc
{
    param (
        [parameter()]
        [System.Management.Automation.PSCredential]
        $Credential
    )

    if ($null -eq $Credential)
    {
        <# Credentials #>
        $Credscredential = Get-Credential -Message "Credentials"

    }
    else
    {
        $CredsCredential = $Credential
    }

    $OrganizationName = $CredsCredential.UserName.Split('@')[1]

    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.22.921.1'

    Node localhost
    {
        AADApplication 723229b2-25ee-40cf-9d7d-6d8b334d313b
        {
            AppId                     = "9834ece1-4957-46dc-94a8-f705aa199803";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "dudfslogix";
            Ensure                    = "Present";
            GroupMembershipClaims     = "All";
            IdentifierUris            = @("HOST/dudfslogix.file.core.windows.net","CIFS/dudfslogix.file.core.windows.net","HTTP/dudfslogix.file.core.windows.net");
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "031a3a6e-1012-40ba-9c3b-e36336dd2cf1";
            Owners                    = @();
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'profile'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'openid'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication e0861b8f-a6d9-4241-a65f-c3ef6189aef9
        {
            AppId                     = "6b8ed7f8-2fc8-4a07-bf61-18923bde7d60";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - PWSH - Teams";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "06fe5047-164d-4bfa-ab3e-13ea490ae9bb";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 6715760d-0209-4e19-9430-84db26e0bd96
        {
            AppId                     = "6141284f-2ed3-4ba8-8198-3c2815b34108";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - API - AuditLogs";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "0ab7951b-a640-45c6-b6f1-12e3eb778af3";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 1564072b-7cb5-4377-8bbd-d71e19ea5298
        {
            AppId                     = "ad0d62b0-903d-4169-aa34-af5ebe4e04fe";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Groups";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "0d04bc50-f420-4087-8084-1786523f4433";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 58f833c3-8464-4ea8-8157-388779da5260
        {
            AppId                     = "0c919911-cb11-455d-827d-60755a291666";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Teams";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "0d3f2055-9281-4f82-b367-23ab14583c65";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 913692ee-e9a0-479c-92d1-fd99ba4444ff
        {
            AppId                     = "940e339e-af29-44be-932c-51bb8f657837";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Exchange";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "109b8d04-c9aa-4f97-99da-68f87dbba60b";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 51e1aa4b-7f76-43e4-8623-43bd30d1d0e1
        {
            AppId                     = "e949f538-ace3-4a12-98a9-9bb6a45701be";
            AvailableToOtherTenants   = $True;
            Credential                = $Credscredential;
            DisplayName               = "OTL - ARM - VM Contributor";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "1cbf056f-db7a-4355-8298-bd2b06ee20a3";
            Owners                    = @("admin@$OrganizationName");
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 02f8355f-3d24-416c-86e1-1af0f4855c11
        {
            AppId                     = "42fc63e1-56aa-4ea5-936c-e5792431bc01";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - DeviceManagement";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "214ee7fc-c811-4c98-ab50-8b89a429a935";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication abf8248a-743e-4df9-b202-ce48e237d499
        {
            AppId                     = "44489d51-234a-4f0c-85a9-62a7c4cbfd9c";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Policy";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "26b4a4e8-c2ec-4710-a2a0-f01b2daf2c23";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 01c81c4e-04a1-4e63-96ab-19331729eba4
        {
            AppId                     = "9b055c75-4a2d-4894-8fc2-c8a0c49d71f1";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - NAGIOS - API - ServiceHealth";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "2f1efd82-ee56-4967-bdee-baef62e64054";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication b8226b64-c4ea-48a2-988a-62989558aff8
        {
            AppId                     = "62b60025-235d-4f0f-b8ea-0766ae9c1daf";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Mail";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "3918d752-ee2d-48ca-8969-b3f082c85909";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 41ef92aa-ad48-4081-8129-d4e9ee039e72
        {
            AppId                     = "0eca16c4-f71a-422f-9264-af3ca704cc50";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Endpoint Management Automation API";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "3cbdfe75-c5a7-465f-b00e-1fd982e3990d";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 80b7b404-040b-4525-affd-0565f68ae73c
        {
            AppId                     = "53b84b3e-82ff-4e09-aa59-b6c2c5c24bb8";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - EXCHANGE - EXCHANGE - CERT - ManageAsApp";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "3d6285a0-f5e1-48cb-a4ed-731ae974de8d";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 153a20fb-78c5-49a3-98e1-02629e2cbeb4
        {
            AppId                     = "e0ef7eaf-5f37-4cba-80f3-b69c1b35f571";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "RemoveADDevices";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "4688807d-a2d2-4fff-919f-2ad1411220ef";
            Owners                    = @("admin@$OrganizationName");
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Directory.ReadWrite.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Directory.AccessAsUser.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Device.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 018de82b-4c14-4111-9c82-4091dfe2537d
        {
            AppId                     = "d36dec3f-e33c-40d3-bf53-b33c53552adc";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - API - Security";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "4a9c8914-da1e-4aa0-aff8-a4136077aad4";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 890a8f6e-2f2d-4e1a-8d30-f564c6fb6963
        {
            AppId                     = "03649d3f-3ddd-4e34-8fb0-1d5661e8f8cb";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Roles";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "5628403b-6fea-4ede-b289-fb3ae68b668b";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication c68cb2d4-5e51-4a02-aeee-36234d497355
        {
            AppId                     = "8da17668-4a79-41ee-aed5-b047cccbf91e";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Netskope User Authentication";
            Ensure                    = "Present";
            Homepage                  = "https://*.goskope.com/nsauth/saml2/*?metadata=netskopeuserauthentication|ISV9.1|primary|z";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "613e3460-61ad-4ebd-90f9-e5b95cb8c0cb";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication e31e4271-7305-474d-900a-fc20d1c55690
        {
            AppId                     = "d0aab54c-85ac-4ea1-b49b-2fdab26e9732";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - DMAN - API - DeviceManagement";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "6c877e31-c60d-4e8b-b5f7-c6d26083d7b0";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 6087bc43-9254-4e35-be46-9f17ed3584c1
        {
            AppId                     = "c386dc90-f757-44e5-82c2-413f08f12e3a";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - API - Intune";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "6f90d014-0c86-496b-bdc6-8bd96c037b47";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 8f77fcad-c3d4-41d9-8048-50cfcfd57eb6
        {
            AppId                     = "7e9bef64-c73e-4afc-b307-cdacc9005b89";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - SHAREPOINT - Reporting";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "7190ae55-07b1-408b-a477-fe3bcd1bc37e";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication ae001338-33db-4006-a2a5-3215f630c884
        {
            AppId                     = "58da69d7-61dc-44c4-95b7-23b8b3943f9d";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Jamf Connect";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "7962ac55-4e4f-4750-b384-7fb74b7895f1";
            Owners                    = @("admin@$OrganizationName");
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 12bb6257-7eb2-4e4c-9f6d-9bd3a3428252
        {
            AppId                     = "44a6de4b-0ec2-484c-ad20-90cd888000a7";
            AvailableToOtherTenants   = $True;
            Credential                = $Credscredential;
            DisplayName               = "devops-sp";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "8399c0e0-6f13-4d96-83fb-52ecd73ddabd";
            Owners                    = @("admin@$OrganizationName");
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 52f6ef32-97d6-48dc-848c-8bc505c4fa24
        {
            AppId                     = "12f4a258-dd99-4f7f-872b-3a5790b6a1a5";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Users";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "8726dd8e-bf9d-4b9c-9658-9f36e9f8790c";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 4b237fd0-c2f5-4f07-9c6b-68cfeb467716
        {
            AppId                     = "20cc8bd5-b73a-46a1-b93f-24d0cab8e8f2";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Intune Automation";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "8a50517b-f9ad-4af3-a8a5-d598bd3634d4";
            Owners                    = @();
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'Policy.ReadWrite.TrustFramework'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Policy.ReadWrite.ConditionalAccess'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Directory.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementServiceConfig.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementConfiguration.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementManagedDevices.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementConfiguration.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Application.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementManagedDevices.PrivilegedOperations.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementApps.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementApps.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 09b49013-8ee4-4b3d-bb67-0497636ed402
        {
            AppId                     = "bcf9937a-bec2-4b68-9904-637e7bf7c8dd";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OptionsTechDev-Tailspin-Lab01-6c139f1c-4167-428d-8668-4257f8c67303";
            Ensure                    = "Present";
            Homepage                  = "https://VisualStudio/SPN";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "8de46cfa-b29c-483c-82d6-79e6122a5f50";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @("https://VisualStudio/SPN");
        }
        AADApplication 1c8414d6-21d2-487a-821d-d7b1af1ef5c4
        {
            AppId                     = "99bb7dfa-fa5c-4bb5-8f43-5e11c4052514";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Sharepoint SOC";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "919ba913-eaf2-447c-962d-48e4da00acc0";
            Owners                    = @();
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'Sites.Selected'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Manage.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication a232d8f9-151b-49c3-be45-126f6bd921d2
        {
            AppId                     = "344db287-3e08-4d4d-a6b2-ab21b08c5d32";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - EMAN - API - DeviceManagement";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "93d7237a-df2d-42c6-a107-6521cc029344";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'Directory.ReadWrite.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Directory.AccessAsUser.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Organization.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementConfiguration.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementApps.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementManagedDevices.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Policy.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Application.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Directory.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Device.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementApps.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementConfiguration.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementManagedDevices.PrivilegedOperations.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementManagedDevices.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'DeviceManagementServiceConfig.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Policy.ReadWrite.ConditionalAccess'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Device.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Policy.Read.ConditionalAccess'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 75c63367-aad6-4cdd-9aae-f23b14e0d5a3
        {
            AppId                     = "d799b200-8d01-47fd-bfe7-a7a3b2ce0d75";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Directory";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "9bde4eb5-d576-4cf0-b803-b32b360af4ce";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication b924a85b-8423-4e98-963c-b152a97e1a0c
        {
            AppId                     = "c146b708-91e4-451d-9269-2fc3e7b8056a";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - NAGIOS - API - Organization";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "9dba335c-1657-4dbc-99d0-43f43e4b79fe";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication af8dec99-f22d-4af7-be5d-0324b8521dc1
        {
            AppId                     = "7d0b323a-932a-496f-b7d5-ffcacf3ec42e";
            AvailableToOtherTenants   = $True;
            Credential                = $Credscredential;
            DisplayName               = "Microsoft365Dsc";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "9f45b1bc-08f7-48ee-8f28-38de8ee13cb6";
            Owners                    = @("admin@$OrganizationName");
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 8edc05c1-b051-44a1-933f-3beacadc51ba
        {
            AppId                     = "18914569-a067-48f7-bfd4-47c244d6d94b";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Netskope Forward Proxy";
            Ensure                    = "Present";
            Homepage                  = "https://account.activedirectory.windowsazure.com:444/applications/default.aspx?metadata=customappsso|ISV9.1|primary|z";
            IdentifierUris            = @("https://nsauth-optionstech.eu.goskope.com/61uSGaQnGy2djG05V0");
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "a26b5552-f3d5-4ac1-993c-523c26c64481";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @("https://nsauth-optionstech.eu.goskope.com/nsauth/saml2/http-post/61uSGaQnGy2djG05V0/acs");
        }
        AADApplication 5c6e509c-88bf-490b-950e-88a06f29d443
        {
            AppId                     = "99f94ded-1171-4095-a016-6f504e1234d0";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - API - RiskyUsers";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "ac1713d8-58f5-42d3-94ff-4ece87c428ce";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication ae6c83ad-d701-494d-867d-5c5c9b8a1e94
        {
            AppId                     = "9984a3a7-e05f-40d0-83bc-a354e924ce2d";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - API - Policy";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "acd9633e-ac43-4562-9702-07746670ff1b";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 2d565a10-d3c4-4f60-ba1b-da8a4f8819d4
        {
            AppId                     = "71a33fa1-0448-49a8-a50e-56d05896cefc";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Application";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "b151df03-1f31-4979-8b24-a44e8ec73249";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 8869a115-5b77-49db-a23c-bc6855152e1e
        {
            AppId                     = "c8ee64d9-b99d-4bd2-8533-0be4455482ac";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Sharepoint Testing";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "b6ce6cd0-07f6-4c66-83a3-aabde30bbdcf";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication 1e0817b1-b73d-4957-b5fc-9d9976b0e9dc
        {
            AppId                     = "701d52ea-ac3f-4d24-a936-04c02ea961da";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - PWSH - AzureAD";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "b6ec38c7-adbd-4ac9-a7df-2d362c13b9a5";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication d0c59470-867e-4ac4-b867-afd1810fbff0
        {
            AppId                     = "16db5121-7647-4571-9f70-e941de887e79";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Reports";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "c0eb77e1-4dc6-48ea-bc1d-a0039b76636e";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 0a4abfd4-c692-41fb-a0f9-0c1d15d0edb1
        {
            AppId                     = "533307a7-43f9-46e0-a5e6-01c639dedb7b";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Conditional Access Changes";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "c584bd8a-0ece-42c0-a9bd-4aa9392a7ebc";
            Owners                    = @();
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'Group.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Policy.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Policy.ReadWrite.ConditionalAccess'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication ed565ccc-f028-4bf9-86f2-73f063846471
        {
            AppId                     = "06e881a1-3b40-4f91-82d6-6a6d6f60a4ae";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - EXCHANGE - CERT - ManageAsApp";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "cb73dcb4-d890-4c01-a277-c5ab2217438f";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 13a5e34a-32dd-4ae0-a343-316bed92308b
        {
            AppId                     = "bbeb72ac-f877-47db-afb7-c321ccafd026";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - Organization";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "dc410367-500b-4f40-b244-ced799ab9035";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 403a1dfe-61e6-47ef-b252-6191ec301e3d
        {
            AppId                     = "fe640dd2-2602-4d12-8cf9-06c81bd1e285";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - PS - API - WindowsVirtualDesktop";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "dc6da02f-f733-4f67-8e6c-75c86a180d4d";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication d8dd1774-6fef-4e86-adbd-144ff35ca06b
        {
            AppId                     = "f60bc2ba-ceb4-4bce-91e0-b9769dfa6905";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - API - AzureADApp";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "ead7cc8b-4427-418e-a79e-54bbe984a4f9";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication 416e0e24-3a6f-47e7-8463-3f9a00bb7b9b
        {
            AppId                     = "15c309d5-1621-44c4-8517-389b54cbb1cb";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - GEN - SPLUNK - SHAREPOINT - CERT - Reporting";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "ec04c74c-980b-4377-9fb7-c90af1549bcf";
            Owners                    = @("dba2cb42-9f1b-4f60-8ad9-2e18b52fdd5d");
            PublicClient              = $False;
            ReplyURLs                 = @("http://localhost");
        }
        AADApplication bb382089-148a-4050-84f8-bac27507e1df
        {
            AppId                     = "83a53190-4c6f-4696-9ec0-076f3b31f7ea";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "citrix-xd-fa9ac4a0-8cff-2dea-4469-9403eaf75d59";
            Ensure                    = "Present";
            Homepage                  = "api://citrix-xd-fa9ac4a0-8cff-2dea-4469-9403eaf75d59";
            IdentifierUris            = @("api://citrix-xd-fa9ac4a0-8cff-2dea-4469-9403eaf75d59");
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "ed6026a5-b9dd-47ae-950c-c562bdc33c0e";
            Owners                    = @("admin@$OrganizationName");
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.ReadBasic.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Windows Azure Active Directory'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadBasic.All'
                Type                = 'Delegated'
                SourceAPI           = 'Windows Azure Active Directory'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'user_impersonation'
                Type                = 'Delegated'
                SourceAPI           = 'Windows Azure Service Management API'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @("api://citrix-xd-fa9ac4a0-8cff-2dea-4469-9403eaf75d59");
        }
        AADApplication aff52e23-cd55-4362-b779-52ec58928984
        {
            AppId                     = "56cdfdbf-2062-42da-9e43-04c690cb1e49";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "P2P Server";
            Ensure                    = "Present";
            IdentifierUris            = @("urn:p2p_cert");
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "f7562e93-23ab-445e-bb5b-7ecb4372c4f7";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADApplication b7e4b1af-28ce-4054-840d-77de0f4ee194
        {
            AppId                     = "c4fa5f6c-bb8e-4083-8fde-8a7e05b71012";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "Jamf Pro SSO";
            Ensure                    = "Present";
            Homepage                  = "https://*.jamfcloud.com/saml/SSO?metadata=jamfpro|ISV9.2|primary|z";
            IdentifierUris            = @("https://optionstechnologynfr.jamfcloud.com/saml/metadata");
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "f904771b-bee8-474a-bdb4-3b70beb8b153";
            Owners                    = @();
            PublicClient              = $False;
            ReplyURLs                 = @("https://optionstechnologynfr.jamfcloud.com/saml/SSO");
        }
        AADApplication e647292b-195e-40cf-bd48-d6c2ca7d4f86
        {
            AppId                     = "3c88d799-ef3e-4904-9e11-39fb4d53495f";
            AvailableToOtherTenants   = $False;
            Credential                = $Credscredential;
            DisplayName               = "OIT - Terraform";
            Ensure                    = "Present";
            IdentifierUris            = @();
            KnownClientApplications   = @();
            Managedidentity           = $False;
            Oauth2RequirePostResponse = $False;
            ObjectId                  = "fbc6dc66-f4ac-4738-9f00-5a75f9d35ec0";
            Owners                    = @("admin@$OrganizationName");
            Permissions               = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
            );
            PublicClient              = $False;
            ReplyURLs                 = @();
        }
        AADConditionalAccessPolicy 8081cd07-f240-48d5-9d2b-18a3603b5cfb
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("exchangeActiveSync","other");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "BLOCK: Legacy authentication clients [All cloud apps]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "bc328eac-6479-44d2-95ac-06ce10f8780f";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy a461bc6e-e037-4bde-9010-e76afe573bc0
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "BLOCK: Unsupported device platforms (Linux / ChromeOS etc) [All cloud apps]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @("android","iOS","windows","macOS");
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "b3d5e38a-fa30-4f4d-bf67-e092b36a34df";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 8a40bd2c-e790-4941-9ce0-40b786ae2bad
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("approvedApplication","compliantApplication");
            ClientAppTypes                           = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Require approved app for mobile access (MAM) [Office 365]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("Sync_DUDADSYNC01-UK_434a3a4e2918@$OrganizationName","admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "91baf73f-1427-4160-a682-e771fce8af7e";
            IncludeApplications                      = @("Office365");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("android","iOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 71abe12a-d7c3-41ce-96d7-c3e3ca168156
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("domainJoinedDevice","compliantDevice");
            ClientAppTypes                           = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Require compliant or Hybrid AD Joined devices (Windows & MAC) [Office 365]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("Sync_DUDADSYNC01-UK_434a3a4e2918@$OrganizationName","admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "4726d571-5d51-4a46-b7f0-6c14443e6a78";
            IncludeApplications                      = @("Office365");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("windows","macOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy b630866b-1e20-4302-a959-9ef2047ccc66
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice");
            ClientAppTypes                           = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Require compliant mobile devices [Office 365]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "0e775150-aa33-48c1-93a1-dc4f87e10b37";
            IncludeApplications                      = @("Office365");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("android","iOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 4508fcad-d88f-4628-a5bc-99559dd91936
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "BLOCK: Elevated Account Access Externally [All cloud apps]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @("OTL WAN IPs");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("Sync_DUDADSYNC01-UK_434a3a4e2918@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "d340e90c-28ca-400d-8ca0-11de6356372c";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @("all");
            IncludeRoles                             = @("Global Administrator","SharePoint Administrator","Exchange Administrator","Conditional Access Administrator","Security Administrator","Helpdesk Administrator","Password Administrator","Billing Administrator","User Administrator");
            IncludeUserActions                       = @();
            IncludeUsers                             = @();
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 898b5064-3686-47b2-bd48-87e4675fe8fb
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("browser","mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @("RequireDuoMfa");
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Require DUO MFA [All Cloud Apps]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("9834ece1-4957-46dc-94a8-f705aa199803","372140e0-b3b7-4226-8ef9-d57986796201");
            ExcludeDevices                           = @();
            ExcludeGroups                            = @("Conditional Access - Exclusions_GRANT Require DUO (All Cloud Apps)");
            ExcludeLocations                         = @("OTL WAN IPs");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("Sync_DUDADSYNC01-UK_434a3a4e2918@$OrganizationName","admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "05307089-a1f3-496d-990c-76139b7de784";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy df9b2b51-069a-445a-a20e-7fc4cff763c4
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("block");
            ClientAppTypes                           = @("all");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "BLOCK: High Risk Users and Sign-ins";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("Sync_DUDADSYNC01-UK_434a3a4e2918@$OrganizationName","admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "1e7d8a3e-fcf5-4822-9c8d-cfaa1eecb79b";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @("high");
            State                                    = "disabled";
            UserRiskLevels                           = @("high");
        }
        AADConditionalAccessPolicy f9e4ea5d-40d4-4ae3-8b32-5afc03988fcf
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("browser");
            CloudAppSecurityIsEnabled                = $True;
            CloudAppSecurityType                     = "blockDownloads";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @("RequireDuoMfa");
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: BYOD Browser Access [All Cloud Apps]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @("OTL WAN IPs");
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("Sync_DUDADSYNC01-UK_434a3a4e2918@$OrganizationName","admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "eaa70760-731b-43fd-9eee-568466236df2";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @("All");
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 3c3d438c-1d0c-41c8-9a90-d0456227ba56
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @();
            ClientAppTypes                           = @("mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @("RequireDuoMfa");
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Intune Enrollment [Mobile apps and desktop clients]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @();
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "26aab0cc-3a15-4923-a4fe-6104f06b0fae";
            IncludeApplications                      = @("0000000a-0000-0000-c000-000000000000","d4ebce55-015a-49b5-a083-c84d1797ae8c");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @();
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 8dc822a6-525f-4cf6-b761-fbc9fa5d0536
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("approvedApplication","compliantDevice");
            ClientAppTypes                           = @("mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @("RequireDuoMfa");
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Mobile Device Access [Compliant or Managed]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("0000000a-0000-0000-c000-000000000000","d4ebce55-015a-49b5-a083-c84d1797ae8c");
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "fae52103-8b12-4ca6-9327-400e40b63eb7";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("android","iOS","windows");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 7851a906-15b2-46b7-bb72-fecfc9652ba6
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("domainJoinedDevice","compliantDevice");
            ClientAppTypes                           = @("mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @();
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Windows Corporate Device Access [All Cloud Apps] ";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("0000000a-0000-0000-c000-000000000000","d4ebce55-015a-49b5-a083-c84d1797ae8c");
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("Sync_DUDADSYNC01-UK_434a3a4e2918@$OrganizationName","admin@$OrganizationName");
            GrantControlOperator                     = "OR";
            Id                                       = "f0959428-0644-4e21-86b5-9a65834f4d79";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("windows");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADConditionalAccessPolicy 80f9a82a-69ee-4e58-b7a9-06f8752eaa3f
        {
            ApplicationEnforcedRestrictionsIsEnabled = $False;
            BuiltInControls                          = @("compliantDevice");
            ClientAppTypes                           = @("mobileAppsAndDesktopClients");
            CloudAppSecurityIsEnabled                = $False;
            CloudAppSecurityType                     = "";
            Credential                               = $Credscredential;
            CustomAuthenticationFactors              = @("RequireDuoMfa");
            DeviceFilterRule                         = "";
            DisplayName                              = "GRANT: Mac Device Access [All Cloud Apps]";
            Ensure                                   = "Present";
            ExcludeApplications                      = @("0000000a-0000-0000-c000-000000000000","d4ebce55-015a-49b5-a083-c84d1797ae8c");
            ExcludeDevices                           = @();
            ExcludeGroups                            = @();
            ExcludeLocations                         = @();
            ExcludePlatforms                         = @();
            ExcludeRoles                             = @();
            ExcludeUsers                             = @("admin@$OrganizationName");
            GrantControlOperator                     = "AND";
            Id                                       = "0a2becd5-2f0b-4d4a-a085-2a2cfc3362cb";
            IncludeApplications                      = @("All");
            IncludeDevices                           = @();
            IncludeGroups                            = @();
            IncludeLocations                         = @();
            IncludePlatforms                         = @("macOS");
            IncludeRoles                             = @();
            IncludeUserActions                       = @();
            IncludeUsers                             = @("All");
            Managedidentity                          = $False;
            PersistentBrowserIsEnabled               = $False;
            PersistentBrowserMode                    = "";
            SignInFrequencyIsEnabled                 = $False;
            SignInFrequencyType                      = "";
            SignInRiskLevels                         = @();
            State                                    = "disabled";
            UserRiskLevels                           = @();
        }
        AADGroup 5154e42e-412a-45c8-87ee-12f86ed6ddef
        {
            Credential           = $Credscredential;
            Description          = "Allows Local Login With Admin Permissions";
            DisplayName          = "sec_compadmin_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "0a443c72-2469-43ca-9f6c-f81e3a4e8fac";
            MailEnabled          = $False;
            MailNickname         = "sec_compadmin_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 82d24696-9334-4c0e-aa3b-64b12d6fa642
        {
            Credential           = $Credscredential;
            Description          = "Version 1";
            DisplayName          = "MEM - Allow Removable Media";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "0ae82963-2e51-407a-8c35-ee8a964f1396";
            MailEnabled          = $False;
            MailNickname         = "fad698c5-3";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 47b3aeed-bf7c-49c4-868a-7e760a41a449
        {
            Credential           = $Credscredential;
            Description          = "Version 1";
            DisplayName          = "MEM - BYOD iOS Users";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "1af3a71e-9752-46c3-aab6-f9235bd8a0a7";
            MailEnabled          = $False;
            MailNickname         = "7dfd49e5-1";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup d4b5e950-d490-42a9-b25b-2b8aa595e208
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Android - All Personal Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "1fe1542d-7fb5-4006-940a-acf991cf2b5a";
            MailEnabled                   = $False;
            MailNickname                  = "d76ae63c-4";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"Android`") -and (device.deviceOwnership -eq `"Personal`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 373abc7a-6f6f-4cbc-830f-353e9685b350
        {
            Credential           = $Credscredential;
            Description          = "Allows Local Login to Workstations";
            DisplayName          = "sec_comp_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "21084643-90c1-4dec-bc1b-b08dc672bf36";
            MailEnabled          = $False;
            MailNickname         = "sec_comp_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 76bbf105-8c13-4bdc-ba9b-8b13be98ed7b
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Intune Licensed Users";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "219cfb17-ed25-41e0-afff-2a66b93ccc20";
            MailEnabled                   = $False;
            MailNickname                  = "667152ca-4";
            Managedidentity               = $False;
            MembershipRule                = "USER.ASSIGNEDPLANS -ANY (ASSIGNEDPLAN.SERVICEPLANID -EQ `"c1ec4a95-1f05-45b3-a911-aa3fa01094f5`" -and assignedPlan.capabilityStatus -ne `"Disabled`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup ab077c8c-1673-46f3-90ae-7b9a29acb73c
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - iPhone - All Personal Devices ";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "2e16a05e-7d9e-4640-b798-f8064bf68e73";
            MailEnabled                   = $False;
            MailNickname                  = "ed9c7ffd-6";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"IPhone`") -and (device.deviceOwnership -eq `"Personal`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup aa9bbce5-abbf-4964-9ff5-dd51c939e047
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Hybrid Azure AD EU";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "312c0943-5a68-423d-9bf4-40d9956f7b46";
            MailEnabled                   = $False;
            MailNickname                  = "cdd452db-b";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:haad_eu`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 7b4856f6-becc-4564-a31c-a1783b59899f
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Kiosk APAC";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "320487ae-725b-447e-92d8-aed65ad4e078";
            MailEnabled                   = $False;
            MailNickname                  = "27b98310-c";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:kiosk_apac`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 32aed108-71b4-40e9-bd64-93ab330c92a4
        {
            Credential           = $Credscredential;
            Description          = "Version 1";
            DisplayName          = "MEM - Phase 1 Update Ring - Broader Group";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "36b35ea9-4fa8-4a47-a24c-e28c6fcfaaa6";
            MailEnabled          = $False;
            MailNickname         = "f903bf13-d";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup cea42452-9990-4b5e-b3e1-3e047b5186e5
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Azure AD APAC";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "3eba1530-9743-45aa-8496-231d336c1704";
            MailEnabled                   = $False;
            MailNickname                  = "e534d960-1";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:aad_apac`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 04bb4488-4ced-47e4-ab1a-aea972872b1f
        {
            Credential           = $Credscredential;
            Description          = "Overriding Group To Bypass DUO Access";
            DisplayName          = "sec_duobypass_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "3f03ff18-c837-45f8-8143-8cd9ada6e8a9";
            MailEnabled          = $False;
            MailNickname         = "sec_duobypass_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 10987ddb-035b-4bed-a908-86e925ee1c8a
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Endpoint Manager Read Only";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "409530fe-d05d-4b27-803b-6c7536880133";
            MailEnabled                   = $False;
            MailNickname                  = "47096a29-f";
            Managedidentity               = $False;
            MembershipRule                = "(user.displayName -startsWith `"svc_device`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup c1834ca9-3789-4f99-b1ae-676523bd63a2
        {
            Credential                    = $Credscredential;
            DisplayName                   = "TestDynamicGroup";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "48a9b85c-1ad7-46ab-a6cf-753c543df4f3";
            MailEnabled                   = $False;
            MailNickname                  = "fa44c533-a";
            Managedidentity               = $False;
            MembershipRule                = "user.userPrincipalName -contains `"oitechdev.com`"";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 2b30f0a9-641f-4c38-8f25-9e097c3c7722
        {
            Credential           = $Credscredential;
            Description          = "DevSite";
            DisplayName          = "DevSite";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "4ea644b5-3cd1-4037-ae4d-50cea39b76b5";
            MailEnabled          = $True;
            MailNickname         = "DevSite";
            Managedidentity      = $False;
            Members              = @("testuser@$OrganizationName","DevOps01@$OrganizationName");
            Owners               = @("testuser@$OrganizationName","DevOps01@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup 400c16b2-6f94-469a-a204-d443385f8890
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Android - All Devices ";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "59e71615-574a-4560-8f4f-c668f366008a";
            MailEnabled                   = $False;
            MailNickname                  = "d4704003-f";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -match `"Android`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 26c03d5b-d724-41fb-a60f-9adfeb002836
        {
            Credential           = $Credscredential;
            DisplayName          = "Azure ATP optionstechnologydev Users";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "5df710aa-622e-4106-99d2-47466c69dea5";
            MailEnabled          = $False;
            MailNickname         = "AzureATPoptionstechnologydevUsers";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup d8d5ca63-db4b-4494-a3d9-d7b3c73ff0f8
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Hybrid Azure AD US";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "5e6d8f95-b1f9-4a28-b872-ef8c43e4493b";
            MailEnabled                   = $False;
            MailNickname                  = "1df70eba-9";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:haad_us`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup d2d71cf2-c10d-4071-9f95-293e02321e0b
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "5e8899a1-ec57-4820-b7f6-946fcc8ff5e7";
            MailEnabled                   = $False;
            MailNickname                  = "8d687a3b-2";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIDs -any (_ -contains `"[ZTDId]`"))";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 874aa1d2-b793-4f24-8cd2-3f4f8e326430
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - All Personal Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "63befcf5-d368-4c90-a021-11a180f1d932";
            MailEnabled                   = $False;
            MailNickname                  = "60a280f5-d";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOwnership -eq `"Personal`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 1d73efcf-92cd-4cc9-8949-22a5a4411c9b
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Hybrid Azure AD APAC";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "784539a2-4ee2-4084-9912-01e32a3314fe";
            MailEnabled                   = $False;
            MailNickname                  = "a8b44a4f-a";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:haad_apac`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 94e23586-33c7-489a-bd93-99aebf60aa81
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Windows 10/11 - All Corporate Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "7bbfc33d-8e43-453a-b111-85330c9b12fa";
            MailEnabled                   = $False;
            MailNickname                  = "70dfd0e3-5";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"Windows`") -and (device.deviceOwnership -eq `"Company`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 5a10de45-56b3-4bbe-a3a2-10b2f25d0eaf
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Azure AD US";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "7c9980b1-2f72-4162-a7e8-89431e38badd";
            MailEnabled                   = $False;
            MailNickname                  = "2e8024ca-9";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:aad_us`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup fbcbd0d0-0e3c-401b-8fb6-5b36a6cfd668
        {
            Credential           = $Credscredential;
            DisplayName          = "Azure ATP optionstechnologydev Administrators";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "7cc2e8ac-2884-4ba1-8da9-6e4b33feced8";
            MailEnabled          = $False;
            MailNickname         = "AzureATPoptionstechnologydevAdministrators";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup e7eb71b6-0568-4730-82ac-643ae8882070
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Kiosk EU";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "7da19c12-276e-4357-964b-e3e9924f621c";
            MailEnabled                   = $False;
            MailNickname                  = "98dfd2c3-6";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:kiosk_eu`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 1383f88d-7a15-4e82-be1f-e3662200c4fd
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - All Corporate Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "85f4253c-b61f-41d4-afa5-1dc20e5c2ca7";
            MailEnabled                   = $False;
            MailNickname                  = "7e64ce55-a";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOwnership -eq `"Company`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 3e9d36c3-483e-48b3-97c0-35721cda877f
        {
            Credential           = $Credscredential;
            Description          = "Access to Exchange FreeBusy Information";
            DisplayName          = "sec_freebusy_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "873c0ac3-d5ca-4823-bd08-a23be0c91c96";
            MailEnabled          = $False;
            MailNickname         = "sec_freebusy_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup afe5acb8-3386-4995-8563-6b1e4cbc1444
        {
            Credential           = $Credscredential;
            Description          = "Grants Access To Citrix Infrastructure";
            DisplayName          = "sec_citrixusers_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "89619e5e-8723-4bac-a11c-32bc68403632";
            MailEnabled          = $False;
            MailNickname         = "sec_citrixusers_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 32ca971e-9e9d-4f9c-b838-610680472240
        {
            Credential           = $Credscredential;
            DisplayName          = "citrix_cloud_ent_app";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "89a1bae3-6e29-426b-9d5a-7e1769f9c8b0";
            MailEnabled          = $False;
            MailNickname         = "bfd0507b-9";
            Managedidentity      = $False;
            Members              = @("DevOps01@$OrganizationName","TestUser02@oitechdev.com");
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup dbbe4de0-852b-4140-bb92-ce3b806a3cfa
        {
            Credential           = $Credscredential;
            DisplayName          = "Azure ATP optionstechnologydev Viewers";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "8c273772-5f82-406b-b2ec-8d8139086c43";
            MailEnabled          = $False;
            MailNickname         = "AzureATPoptionstechnologydevViewers";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup bce1b3f3-1ddd-4cbb-8e08-23606a14e95d
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Windows 10 - All Personal Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "8e20db1f-83ea-4b38-96fb-4a64a1de3538";
            MailEnabled                   = $False;
            MailNickname                  = "ad8849c1-c";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"Windows`") -and (device.deviceOwnership -eq `"Personal`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 9b684251-a9bb-4cf0-82ba-fa575c6a75c8
        {
            Credential           = $Credscredential;
            Description          = "Allows Members Read Access To Client OU";
            DisplayName          = "sec_ad_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "9236de66-87c8-4afa-a90e-86a32cced858";
            MailEnabled          = $False;
            MailNickname         = "sec_ad_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup e53c4b93-dbb0-4a42-bb06-bfe73a170792
        {
            Credential           = $Credscredential;
            DisplayName          = "MEM - Defender for Endpoint Security Role";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "96910e7d-4293-4f0d-a144-8402f8241af2";
            MailEnabled          = $False;
            MailNickname         = "ade819d8-6";
            Managedidentity      = $False;
            Members              = @("admin@$OrganizationName");
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 5892e049-7a8f-4eb1-84b7-e4d9bc5a75af
        {
            Credential           = $Credscredential;
            Description          = "Grants Exchange And GAL Specific Permissions";
            DisplayName          = "sec_mail_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "987bc337-080b-4c48-b024-0c91d61be870";
            MailEnabled          = $False;
            MailNickname         = "sec_mail_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 00279c35-54b8-4e3b-bfda-b1de4d50d79c
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - iPad - All Personal Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "9b1173aa-3822-44f2-b4ba-89c51c7a0820";
            MailEnabled                   = $False;
            MailNickname                  = "800dfd44-6";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"iPad`") -and (device.deviceOwnership -eq `"Personal`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup a441722a-45dc-498a-9b96-45f69bb2717f
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Azure AD EU";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "9f6dc432-71b2-4882-9040-84d52f83f220";
            MailEnabled                   = $False;
            MailNickname                  = "254c9af9-2";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:aad_eu`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 40f293ff-8d11-4363-9aee-9328d169f09b
        {
            Credential           = $Credscredential;
            DisplayName          = "GuestInviteTest1";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "a352b48e-cbca-489b-b689-e5783867ae35";
            MailEnabled          = $False;
            MailNickname         = "141a8562-2";
            Managedidentity      = $False;
            Members              = @("amagee@oitechdev.com","alexandra.magee_options-it.com#EXT#@$OrganizationName");
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 8274ec5d-8732-4e71-84ac-00b4f964aae6
        {
            Credential           = $Credscredential;
            Description          = "Public Folder Admin Access";
            DisplayName          = "sec_pfadm_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "a4432445-d1f4-45a8-9921-9360e38e8ff4";
            MailEnabled          = $False;
            MailNickname         = "sec_pfadm_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup dc0afdd3-8f98-41f1-b54f-e15fcc50436c
        {
            Credential           = $Credscredential;
            Description          = "Applys Secure Password Policy To Members";
            DisplayName          = "sec_passpolicy_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "a7ac4363-0e48-4170-96c9-644bf57f3c90";
            MailEnabled          = $False;
            MailNickname         = "sec_passpolicy_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 98b084ba-74dd-49cc-9bf1-4dca7fb40b02
        {
            Credential           = $Credscredential;
            Description          = "Version 1";
            DisplayName          = "MEM - Phase 0 Update Ring - Pilot Users";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "a821b596-7a2d-402c-9021-852f112904e8";
            MailEnabled          = $False;
            MailNickname         = "f30ecf53-0";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 12f31c4a-6014-4615-ab01-b04ad315cec9
        {
            Credential           = $Credscredential;
            Description          = "Members Have Removable Storage Enabled";
            DisplayName          = "sec_enableremovablestorage_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "a8a40896-be5c-412c-b8f2-cd6da9d7fb1e";
            MailEnabled          = $False;
            MailNickname         = "sec_enableremovablestorage_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup e1286913-ea2f-465d-8b12-f2545082db87
        {
            Credential           = $Credscredential;
            Description          = "Excludes Members of this group from getting DUO prompts when logging in";
            DisplayName          = "Conditional Access - Exclusions_GRANT Require DUO (All Cloud Apps)";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "a8b57429-bddc-43ed-a7e7-e3619637b9eb";
            IsAssignableToRole   = $True;
            MailEnabled          = $False;
            MailNickname         = "9b162621-2";
            Managedidentity      = $False;
            Members              = @("DevOps01@$OrganizationName");
            Owners               = @();
            SecurityEnabled      = $True;
            Visibility           = "Private";
        }
        AADGroup 76e8129b-60cf-4de3-beba-e33b35b45efc
        {
            Credential           = $Credscredential;
            DisplayName          = "Netskope POC Group 1 - Standard User";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "b0496eab-e936-4b49-a716-8b3b6cfad422";
            MailEnabled          = $False;
            MailNickname         = "2265401b-b";
            Managedidentity      = $False;
            Members              = @("testuser@$OrganizationName");
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 647f8c59-c2dd-44c4-951d-03e7b73eb7ea
        {
            Credential                    = $Credscredential;
            Description                   = "SharepointTestGroup";
            DisplayName                   = "SharepointTestGroup";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership","Unified");
            Id                            = "b4226eef-adb3-40d3-9c38-a63906e427bc";
            MailEnabled                   = $True;
            MailNickname                  = "SharepointTestGroup";
            Managedidentity               = $False;
            MembershipRule                = "(user.assignedPlans -any (ASSIGNEDPLAN.SERVICEPLANID -EQ `"c1ec4a95-1f05-45b3-a911-aa3fa01094f5`" -and assignedPlan.capabilityStatus -ne `"Disabled`"))";
            MembershipRuleProcessingState = "On";
            Owners                        = @("admin@$OrganizationName","DevOps01@$OrganizationName");
            SecurityEnabled               = $True;
            Visibility                    = "Private";
        }
        AADGroup 922c3364-a993-4121-9d85-c2051813e737
        {
            Credential           = $Credscredential;
            Description          = "Public Default Folder Access";
            DisplayName          = "sec_pf_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "b5687948-2479-46bb-a167-e5b0f1c57612";
            MailEnabled          = $False;
            MailNickname         = "sec_pf_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 4b1472cd-fe5c-47ba-b380-906e1ec20772
        {
            Credential           = $Credscredential;
            Description          = "Jira Security Group";
            DisplayName          = "sec_jira_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "b59a612c-6f68-4d73-a9eb-d7290e203430";
            MailEnabled          = $False;
            MailNickname         = "sec_jira_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 7a85c22c-0a05-4680-9d62-b8e45777335a
        {
            Credential           = $Credscredential;
            DisplayName          = "GuestInviteTest2";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "b7c4e3bd-1905-40bc-af96-07cc56272ced";
            MailEnabled          = $False;
            MailNickname         = "a4167fec-c";
            Managedidentity      = $False;
            Members              = @("amagee@oitechdev.com","alexandra.magee_options-it.com#EXT#@$OrganizationName");
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 1f683088-ed18-49dd-940a-66d57037f113
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Android - All Corporate Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "ba5af936-e6bc-4238-8964-66b9bd216000";
            MailEnabled                   = $False;
            MailNickname                  = "8d908800-6";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"Android`") -and (device.deviceOwnership -eq `"Company`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 6509b5e9-1394-409b-ad3f-1e2631c2b6f0
        {
            Credential           = $Credscredential;
            Description          = "Grants Local Admin Rights On Servers Only";
            DisplayName          = "sec_serveradmin_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "be859e05-7555-4299-86ff-1bd58317f541";
            MailEnabled          = $False;
            MailNickname         = "sec_serveradmin_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 4e895aa0-244f-4157-a911-4a4d67a33dcc
        {
            Credential           = $Credscredential;
            Description          = "Version 1";
            DisplayName          = "MEM - Phase 2 Update Ring - Production";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "bf724403-a0ea-4d98-a870-90ca2c3b2774";
            MailEnabled          = $False;
            MailNickname         = "61133cf1-d";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 36da2a2b-69f3-4c75-a73d-0c1895cb437c
        {
            Credential           = $Credscredential;
            Description          = "Teams Testing Team";
            DisplayName          = "Teams Testing Team";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "c7c8b91a-fc9e-4ff4-969d-f73f7753b377";
            MailEnabled          = $True;
            MailNickname         = "TeamsTestingTeam";
            Managedidentity      = $False;
            Members              = @("DevOps01@$OrganizationName","TestUser01@$OrganizationName");
            Owners               = @("DevOps01@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Private";
        }
        AADGroup 3ba3c851-efbb-451f-968b-7a85db9d1105
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - iPhone - All Corporate Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "cb4aed0e-6c28-47cb-b236-75cb95ddf9e6";
            MailEnabled                   = $False;
            MailNickname                  = "3a1a2ca0-3";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"IPhone`") -and (device.deviceOwnership -eq `"Company`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup 463fe442-d758-4777-b38d-cb26445adee9
        {
            Credential           = $Credscredential;
            Description          = "AVD Security Group";
            DisplayName          = "sec_avd_users_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "cdae34ee-5835-4115-923b-cd1556127208";
            MailEnabled          = $False;
            MailNickname         = "sec_avd_users_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 74754e03-1a2c-4612-a5dc-73754397b95d
        {
            Credential           = $Credscredential;
            Description          = "This is the default group for everyone in the network";
            DisplayName          = "All Company";
            Ensure               = "Present";
            GroupTypes           = @("Unified");
            Id                   = "d1556d4f-6f06-4630-a317-6dd5cf59dfba";
            MailEnabled          = $True;
            MailNickname         = "allcompany";
            Managedidentity      = $False;
            Members              = @("admin@$OrganizationName","testuser@$OrganizationName","DevOps01@$OrganizationName");
            Owners               = @("admin@$OrganizationName");
            SecurityEnabled      = $False;
            Visibility           = "Public";
        }
        AADGroup ec32ffdd-c92e-4d99-ba89-30b32094b334
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - iPad - All Corporate Devices";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "dca01eaf-c84e-4ee4-a849-f4efdb26180c";
            MailEnabled                   = $False;
            MailNickname                  = "bf9fc6f7-b";
            Managedidentity               = $False;
            MembershipRule                = "(device.deviceOSType -eq `"iPad`") -and (device.deviceOwnership -eq `"Company`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup ae84b178-c97c-4967-83ef-c4732c75ddd0
        {
            Credential           = $Credscredential;
            DisplayName          = "TestExcludeGroup";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "e17dc4a9-2b6f-4c38-ad83-70ecfbb78df5";
            MailEnabled          = $False;
            MailNickname         = "32473ffc-b";
            Managedidentity      = $False;
            Members              = @("TestUser02@oitechdev.com");
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup cc8566af-a4b1-44cc-894d-440925bb1679
        {
            Credential           = $Credscredential;
            Description          = "Allows Access To User And Shared Drives";
            DisplayName          = "sec_data_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "e4337659-72ab-4f9c-a7e7-a39c5e20c3ba";
            MailEnabled          = $False;
            MailNickname         = "sec_data_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 85d54c0e-778d-46b4-8879-aac16bceb025
        {
            Credential           = $Credscredential;
            Description          = "Overriding Group To Enable DUO Access";
            DisplayName          = "sec_duoenable_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "e881c94f-1daa-4ae8-96e4-aff33bc0700c";
            MailEnabled          = $False;
            MailNickname         = "sec_duoenable_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup 32e7e2c6-3c8e-4dcb-b801-2e6dc24144a7
        {
            Credential           = $Credscredential;
            Description          = "Grants Permissions On All Company Printers";
            DisplayName          = "sec_print_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "ee286700-9fe6-4344-b67a-5d250e21ef88";
            MailEnabled          = $False;
            MailNickname         = "sec_print_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup b28b638b-530f-44b1-aa40-a6496f6ea4ca
        {
            Credential           = $Credscredential;
            Description          = "Overriding Group To Disable DUO Access";
            DisplayName          = "sec_duodisable_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "f1ea6014-1240-4d4c-9ce9-68f2ebd7ab27";
            MailEnabled          = $False;
            MailNickname         = "sec_duodisable_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup a20ed939-5aa4-49f9-b58b-5bf1163a22d4
        {
            Credential           = $Credscredential;
            Description          = "Assigns Default Web Filering Profile";
            DisplayName          = "sec_webblockdefault_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "fb85ace6-ef12-4a0f-8f43-2dbbe75a5e4f";
            MailEnabled          = $False;
            MailNickname         = "sec_webblockdefault_dud";
            Managedidentity      = $False;
            Members              = @();
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroup a311bfdf-2659-46c8-9da5-61839f287fd5
        {
            Credential                    = $Credscredential;
            Description                   = "Version 1";
            DisplayName                   = "MEM - Autopilot Registered Devices - Kiosk US";
            Ensure                        = "Present";
            GroupTypes                    = @("DynamicMembership");
            Id                            = "fe9c7673-b516-4f15-a848-1d13ced9dc19";
            MailEnabled                   = $False;
            MailNickname                  = "d244cb01-3";
            Managedidentity               = $False;
            MembershipRule                = "(device.devicePhysicalIds -any _ -contains `"[OrderID]:kiosk_us`")";
            MembershipRuleProcessingState = "On";
            Owners                        = @();
            SecurityEnabled               = $True;
        }
        AADGroup ebe733f7-69af-4df6-a33f-846eeca0f190
        {
            Credential           = $Credscredential;
            Description          = "This Group Is A Member Of All Standard Sec Groups";
            DisplayName          = "sec_all_dud";
            Ensure               = "Present";
            GroupTypes           = @();
            Id                   = "feda26a7-baeb-41cc-9d71-f3b25c5d5ffd";
            MailEnabled          = $False;
            MailNickname         = "sec_all_dud";
            Managedidentity      = $False;
            Members              = @("TestUser02@oitechdev.com","TestUser01@$OrganizationName");
            Owners               = @();
            SecurityEnabled      = $True;
        }
        AADGroupsSettings 13528aa8-2a10-478c-8ac8-b9b4d83df1e6
        {
            Credential           = $Credscredential;
            Ensure               = "Absent";
            IsSingleInstance     = "Yes";
            ManagedIdentity      = False;
        }
        AADNamedLocationPolicy d05b518d-c63a-46b0-b114-5fca5fa0c85b
        {
            Credential           = $Credscredential;
            DisplayName          = "OTL WAN IPs";
            Ensure               = "Present";
            Id                   = "0a3f963a-8281-4f57-aca7-05ab80117439";
            IpRanges             = @("82.150.101.13/32","82.150.99.12/32","82.150.96.12/32","46.18.80.5/32","82.150.102.13/32","82.150.103.78/32","46.18.80.10/32","82.150.106.2/32","82.150.104.2/32","82.150.107.2/32","46.18.80.2/32","82.150.101.2/32","82.150.102.2/32","82.150.99.2/32","82.150.96.2/32","195.167.242.91/32","195.167.243.91/32","195.167.245.91/32","195.167.246.91/32","195.167.248.91/32","195.167.249.91/32","176.106.115.158/32","195.167.242.1/32","195.167.243.1/32","195.167.244.1/32","195.167.245.1/32","195.167.246.1/32","195.167.248.1/32","195.167.249.1/32");
            IsTrusted            = $True;
            Managedidentity      = $False;
            OdataType            = "#microsoft.graph.ipNamedLocation";
        }
        AADRoleDefinition d63e09ff-3962-422e-a7a9-c452684a1af4
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of Azure AD and Microsoft services that use Azure AD identities.";
            DisplayName          = "Global Administrator";
            Ensure               = "Present";
            Id                   = "62e90394-69f5-4237-9190-012177145e10";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/allProperties/allTasks","microsoft.directory/accessReviews/definitions/allProperties/allTasks","microsoft.directory/adminConsentRequestPolicy/allProperties/allTasks","microsoft.directory/administrativeUnits/allProperties/allTasks","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/allProperties/allTasks","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/users/authenticationMethods/create","microsoft.directory/users/authenticationMethods/delete","microsoft.directory/users/authenticationMethods/standard/read","microsoft.directory/users/authenticationMethods/basic/update","microsoft.directory/authorizationPolicy/allProperties/allTasks","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.directory/connectors/create","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/create","microsoft.directory/connectorGroups/delete","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/connectorGroups/allProperties/update","microsoft.directory/contacts/allProperties/allTasks","microsoft.directory/contracts/allProperties/allTasks","microsoft.directory/customAuthenticationExtensions/allProperties/allTasks","microsoft.directory/deletedItems/delete","microsoft.directory/deletedItems/restore","microsoft.directory/devices/allProperties/allTasks","microsoft.directory/namedLocations/create","microsoft.directory/namedLocations/delete","microsoft.directory/namedLocations/standard/read","microsoft.directory/namedLocations/basic/update","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceManagementPolicies/basic/update","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/deviceRegistrationPolicy/basic/update","microsoft.directory/directoryRoles/allProperties/allTasks","microsoft.directory/directoryRoleTemplates/allProperties/allTasks","microsoft.directory/domains/allProperties/allTasks","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/allProperties/allTasks","microsoft.directory/groupsAssignableToRoles/create","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/groupSettings/allProperties/allTasks","microsoft.directory/groupSettingTemplates/allProperties/allTasks","microsoft.directory/hybridAuthenticationPolicy/allProperties/allTasks","microsoft.directory/identityProtection/allProperties/allTasks","microsoft.directory/loginOrganizationBranding/allProperties/allTasks","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/organization/allProperties/allTasks","microsoft.directory/passwordHashSync/allProperties/allTasks","microsoft.directory/policies/allProperties/allTasks","microsoft.directory/conditionalAccessPolicies/allProperties/allTasks","microsoft.directory/crossTenantAccessPolicy/standard/read","microsoft.directory/crossTenantAccessPolicy/allowedCloudEndpoints/update","microsoft.directory/crossTenantAccessPolicy/basic/update","microsoft.directory/crossTenantAccessPolicy/default/standard/read","microsoft.directory/crossTenantAccessPolicy/default/b2bCollaboration/update","microsoft.directory/crossTenantAccessPolicy/default/b2bDirectConnect/update","microsoft.directory/crossTenantAccessPolicy/default/crossCloudMeetings/update","microsoft.directory/crossTenantAccessPolicy/default/tenantRestrictions/update","microsoft.directory/crossTenantAccessPolicy/partners/create","microsoft.directory/crossTenantAccessPolicy/partners/delete","microsoft.directory/crossTenantAccessPolicy/partners/standard/read","microsoft.directory/crossTenantAccessPolicy/partners/b2bCollaboration/update","microsoft.directory/crossTenantAccessPolicy/partners/b2bDirectConnect/update","microsoft.directory/crossTenantAccessPolicy/partners/crossCloudMeetings/update","microsoft.directory/crossTenantAccessPolicy/partners/tenantRestrictions/update","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/serviceAction/activateService","microsoft.directory/serviceAction/disableDirectoryFeature","microsoft.directory/serviceAction/enableDirectoryFeature","microsoft.directory/serviceAction/getAvailableExtentionProperties","microsoft.directory/servicePrincipals/allProperties/allTasks","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-company-admin","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.directory/subscribedSkus/allProperties/allTasks","microsoft.directory/users/allProperties/allTasks","microsoft.directory/permissionGrantPolicies/create","microsoft.directory/permissionGrantPolicies/delete","microsoft.directory/permissionGrantPolicies/standard/read","microsoft.directory/permissionGrantPolicies/basic/update","microsoft.directory/servicePrincipalCreationPolicies/create","microsoft.directory/servicePrincipalCreationPolicies/delete","microsoft.directory/servicePrincipalCreationPolicies/standard/read","microsoft.directory/servicePrincipalCreationPolicies/basic/update","microsoft.directory/tenantManagement/tenants/create","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/revoke","microsoft.directory/verifiableCredentials/configuration/contracts/create","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/update","microsoft.directory/verifiableCredentials/configuration/create","microsoft.directory/verifiableCredentials/configuration/delete","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/update","microsoft.directory/lifecycleWorkflows/workflows/allProperties/allTasks","microsoft.azure.advancedThreatProtection/allEntities/allTasks","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.cloudPC/allEntities/allProperties/allTasks","microsoft.commerce.billing/allEntities/allProperties/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.edge/allEntities/allProperties/allTasks","microsoft.flow/allEntities/allTasks","microsoft.insights/allEntities/allProperties/allTasks","microsoft.intune/allEntities/allTasks","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.desktopAnalytics/allEntities/allTasks","microsoft.office365.exchange/allEntities/basic/allTasks","microsoft.office365.knowledge/contentUnderstanding/allProperties/allTasks","microsoft.office365.knowledge/contentUnderstanding/analytics/allProperties/read","microsoft.office365.knowledge/knowledgeNetwork/allProperties/allTasks","microsoft.office365.knowledge/knowledgeNetwork/topicVisibility/allProperties/allTasks","microsoft.office365.knowledge/learningSources/allProperties/allTasks","microsoft.office365.lockbox/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.network/performance/allProperties/read","microsoft.office365.protectionCenter/allEntities/allProperties/allTasks","microsoft.office365.search/content/manage","microsoft.office365.securityComplianceCenter/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.userCommunication/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.office365.yammer/allEntities/allProperties/allTasks","microsoft.permissionsManagement/allEntities/allProperties/allTasks","microsoft.powerApps/allEntities/allTasks","microsoft.powerApps.powerBI/allEntities/allTasks","microsoft.teams/allEntities/allProperties/allTasks","microsoft.virtualVisits/allEntities/allProperties/allTasks","microsoft.windows.defenderAdvancedThreatProtection/allEntities/allTasks","microsoft.windows.updatesDeployments/allEntities/allProperties/allTasks");
            TemplateId           = "62e90394-69f5-4237-9190-012177145e10";
            Version              = "1";
        }
        AADRoleDefinition 41a10df4-55a1-4af1-ab69-e13d024300be
        {
            Credential           = $Credscredential;
            Description          = "Default role for guest users. Can read a limited set of directory information.";
            DisplayName          = "Guest User";
            Ensure               = "Present";
            Id                   = "10dae51f-b6af-4016-8d66-8c2a99b929b3";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/standard/limitedRead","microsoft.directory/applications/owners/limitedRead","microsoft.directory/applications/policies/limitedRead","microsoft.directory/domains/standard/read","microsoft.directory/groups/standard/limitedRead","microsoft.directory/groups/appRoleAssignments/limitedRead","microsoft.directory/groups/memberOf/limitedRead","microsoft.directory/groups/members/limitedRead","microsoft.directory/groups/owners/limitedRead","microsoft.directory/groups/settings/limitedRead","microsoft.directory/organization/basicProfile/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/limitedRead","microsoft.directory/servicePrincipals/appRoleAssignments/limitedRead","microsoft.directory/servicePrincipals/standard/limitedRead","microsoft.directory/servicePrincipals/memberOf/limitedRead","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/limitedRead","microsoft.directory/servicePrincipals/owners/limitedRead","microsoft.directory/servicePrincipals/ownedObjects/limitedRead","microsoft.directory/servicePrincipals/policies/limitedRead","microsoft.directory/users/inviteGuest","microsoft.directory/users/guestBasicProfile/limitedRead","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/eligibleMemberOf/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/pendingMemberOf/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/users/password/update");
            TemplateId           = "10dae51f-b6af-4016-8d66-8c2a99b929b3";
            Version              = "1";
        }
        AADRoleDefinition 8a622b23-f88b-4e3a-abbc-d5b26941a469
        {
            Credential           = $Credscredential;
            Description          = "Restricted role for guest users. Can read a limited set of directory information.";
            DisplayName          = "Restricted Guest User";
            Ensure               = "Present";
            Id                   = "2af84b1e-32c8-42b7-82bc-daa82404023b";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/standard/limitedRead","microsoft.directory/applications/owners/limitedRead","microsoft.directory/applications/policies/limitedRead","microsoft.directory/domains/standard/read","microsoft.directory/organization/basicProfile/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/limitedRead","microsoft.directory/servicePrincipals/appRoleAssignments/limitedRead","microsoft.directory/servicePrincipals/standard/limitedRead","microsoft.directory/servicePrincipals/memberOf/limitedRead","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/limitedRead","microsoft.directory/servicePrincipals/owners/limitedRead","microsoft.directory/servicePrincipals/ownedObjects/limitedRead","microsoft.directory/servicePrincipals/policies/limitedRead","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/eligibleMemberOf/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/pendingMemberOf/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/users/password/update");
            TemplateId           = "2af84b1e-32c8-42b7-82bc-daa82404023b";
            Version              = "1";
        }
        AADRoleDefinition 0f267afc-c87b-44bf-8f8e-12067be5ef39
        {
            Credential           = $Credscredential;
            Description          = "Can invite guest users independent of the 'members can invite guests' setting.";
            DisplayName          = "Guest Inviter";
            Ensure               = "Present";
            Id                   = "95e79109-95c0-4d8e-aee3-d01accf2d47b";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/inviteGuest","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read");
            TemplateId           = "95e79109-95c0-4d8e-aee3-d01accf2d47b";
            Version              = "1";
        }
        AADRoleDefinition 4236fccc-e0a0-49c8-be8c-09b5c65b5265
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of users and groups, including resetting passwords for limited admins.";
            DisplayName          = "User Administrator";
            Ensure               = "Present";
            Id                   = "fe930be7-5e62-47db-91af-98c3a49a38b1";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions.applications/allProperties/allTasks","microsoft.directory/accessReviews/definitions.directoryRoles/allProperties/read","microsoft.directory/accessReviews/definitions.entitlementManagement/allProperties/allTasks","microsoft.directory/accessReviews/definitions.groups/allProperties/update","microsoft.directory/accessReviews/definitions.groups/create","microsoft.directory/accessReviews/definitions.groups/delete","microsoft.directory/accessReviews/definitions.groups/allProperties/read","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/deletedItems.groups/restore","microsoft.directory/deletedItems.users/restore","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/policies/standard/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/inviteGuest","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "fe930be7-5e62-47db-91af-98c3a49a38b1";
            Version              = "1";
        }
        AADRoleDefinition b0a288a1-46de-4e4f-a2d8-b1433c177e9b
        {
            Credential           = $Credscredential;
            Description          = "Can reset passwords for non-administrators and Helpdesk Administrators.";
            DisplayName          = "Helpdesk Administrator";
            Ensure               = "Present";
            Id                   = "729827e3-9c14-49f7-bb1b-9608f156bbb8";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/bitlockerKeys/key/read","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/password/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "729827e3-9c14-49f7-bb1b-9608f156bbb8";
            Version              = "1";
        }
        AADRoleDefinition 8b2800c2-0220-460f-8032-efd6e818208d
        {
            Credential           = $Credscredential;
            Description          = "Can read service health information and manage support tickets.";
            DisplayName          = "Service Support Administrator";
            Ensure               = "Present";
            Id                   = "f023fd81-a637-4b56-95fd-791ac0226033";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "f023fd81-a637-4b56-95fd-791ac0226033";
            Version              = "1";
        }
        AADRoleDefinition e97be542-29ca-41f3-9c09-911ae98acc4d
        {
            Credential           = $Credscredential;
            Description          = "Can perform common billing related tasks like updating payment information.";
            DisplayName          = "Billing Administrator";
            Ensure               = "Present";
            Id                   = "b0f54661-2d74-4c50-afa3-1ec803f12efe";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/organization/basic/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.commerce.billing/allEntities/allProperties/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "b0f54661-2d74-4c50-afa3-1ec803f12efe";
            Version              = "1";
        }
        AADRoleDefinition 1b763f15-8d85-44d4-8286-2c6c38c5024c
        {
            Credential           = $Credscredential;
            Description          = "Default role for member users. Can read all and write a limited set of directory information.";
            DisplayName          = "User";
            Ensure               = "Present";
            Id                   = "a0b1b346-4d3e-4e8b-98f8-753987be4970";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/administrativeUnits/standard/read","microsoft.directory/administrativeUnits/members/read","microsoft.directory/applications/standard/read","microsoft.directory/applications/owners/read","microsoft.directory/applications/policies/read","microsoft.directory/applications/createAsOwner","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/contacts/standard/read","microsoft.directory/contacts/memberOf/read","microsoft.directory/contracts/standard/read","microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/directoryRoles/standard/read","microsoft.directory/directoryRoles/eligibleMembers/read","microsoft.directory/directoryRoles/members/read","microsoft.directory/domains/standard/read","microsoft.directory/groups/createAsOwner","microsoft.directory/groups/standard/read","microsoft.directory/groups/appRoleAssignments/read","microsoft.directory/groups/memberOf/read","microsoft.directory/groups/members/read","microsoft.directory/groups/owners/read","microsoft.directory/oAuth2PermissionGrants/standard/read","microsoft.directory/organization/standard/read","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/applicationPolicies/createAsOwner","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/roleAssignments/standard/read","microsoft.directory/roleDefinitions/standard/read","microsoft.directory/servicePrincipals/createAsOwner","microsoft.directory/servicePrincipals/authentication/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/tenantManagement/tenants/create","microsoft.directory/users/activateServicePlan","microsoft.directory/users/inviteGuest","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/extensionProperties/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/verification/update","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/deletedItems.groups/restore","microsoft.directory/devices/disable","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/policies/delete","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/signInReports/allProperties/read","microsoft.directory/users/changePassword","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/basicProfile/update","microsoft.directory/users/identities/update","microsoft.directory/users/mobile/update","microsoft.directory/users/searchableDeviceKey/update","microsoft.directory/userInfos/address/read","microsoft.directory/userInfos/email/read","microsoft.directory/userInfos/openId/read","microsoft.directory/userInfos/phone/read","microsoft.directory/userInfos/profile/read");
            TemplateId           = "a0b1b346-4d3e-4e8b-98f8-753987be4970";
            Version              = "1";
        }
        AADRoleDefinition 0ee6ee55-8ad9-4c8d-b456-3390f45f1078
        {
            Credential           = $Credscredential;
            Description          = "Do not use - not intended for general use.";
            DisplayName          = "Partner Tier1 Support";
            Ensure               = "Present";
            Id                   = "4ba39ca4-527c-499a-b93d-d9b492c50246";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/deletedItems.groups/restore","microsoft.directory/deletedItems.users/restore","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4ba39ca4-527c-499a-b93d-d9b492c50246";
            Version              = "1";
        }
        AADRoleDefinition e8c36ba7-0450-4605-bbbe-221a9aa7ea01
        {
            Credential           = $Credscredential;
            Description          = "Do not use - not intended for general use.";
            DisplayName          = "Partner Tier2 Support";
            Ensure               = "Present";
            Id                   = "e00e864a-17c5-4a4b-9c06-f5b95a8d5bd8";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/deletedItems.groups/restore","microsoft.directory/deletedItems.users/restore","microsoft.directory/domains/allProperties/allTasks","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/organization/basic/update","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e00e864a-17c5-4a4b-9c06-f5b95a8d5bd8";
            Version              = "1";
        }
        AADRoleDefinition 7a6e8ba9-802a-4438-8c87-034adcf1e675
        {
            Credential           = $Credscredential;
            Description          = "Can read basic directory information. Commonly used to grant directory read access to applications and guests.";
            DisplayName          = "Directory Readers";
            Ensure               = "Present";
            Id                   = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/administrativeUnits/standard/read","microsoft.directory/administrativeUnits/members/read","microsoft.directory/applications/standard/read","microsoft.directory/applications/owners/read","microsoft.directory/applications/policies/read","microsoft.directory/contacts/standard/read","microsoft.directory/contacts/memberOf/read","microsoft.directory/contracts/standard/read","microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/directoryRoles/standard/read","microsoft.directory/directoryRoles/eligibleMembers/read","microsoft.directory/directoryRoles/members/read","microsoft.directory/domains/standard/read","microsoft.directory/groups/standard/read","microsoft.directory/groups/appRoleAssignments/read","microsoft.directory/groups/memberOf/read","microsoft.directory/groups/members/read","microsoft.directory/groups/owners/read","microsoft.directory/groups/settings/read","microsoft.directory/groupSettings/standard/read","microsoft.directory/groupSettingTemplates/standard/read","microsoft.directory/oAuth2PermissionGrants/standard/read","microsoft.directory/organization/standard/read","microsoft.directory/organization/trustedCAsForPasswordlessAuth/read","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/roleAssignments/standard/read","microsoft.directory/roleDefinitions/standard/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/deviceForResourceAccount/read","microsoft.directory/users/directReports/read","microsoft.directory/users/licenseDetails/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/photo/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read");
            TemplateId           = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b";
            Version              = "1";
        }
        AADRoleDefinition a79ddba8-13ca-42f5-8d91-76964b6335ce
        {
            Credential           = $Credscredential;
            Description          = "Can read and write basic directory information. For granting access to applications, not intended for users.";
            DisplayName          = "Directory Writers";
            Ensure               = "Present";
            Id                   = "9360feb5-f418-4baa-8175-e2a00bac4301";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/extensionProperties/update","microsoft.directory/contacts/create","microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/groupSettings/create","microsoft.directory/groupSettings/delete","microsoft.directory/groupSettings/basic/update","microsoft.directory/oAuth2PermissionGrants/create","microsoft.directory/oAuth2PermissionGrants/basic/update","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/inviteGuest","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/photo/update","microsoft.directory/users/userPrincipalName/update");
            TemplateId           = "9360feb5-f418-4baa-8175-e2a00bac4301";
            Version              = "1";
        }
        AADRoleDefinition b6c4e15f-722f-4738-80bf-329025e12126
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Exchange product.";
            DisplayName          = "Exchange Administrator";
            Ensure               = "Present";
            Id                   = "29232cdf-9323-42fd-ade2-1d097af3e4de";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.exchange/allEntities/basic/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "29232cdf-9323-42fd-ade2-1d097af3e4de";
            Version              = "1";
        }
        AADRoleDefinition c6dec00e-83f7-4dd8-8f87-e288ff31de6e
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the SharePoint service.";
            DisplayName          = "SharePoint Administrator";
            Ensure               = "Present";
            Id                   = "f28a1f50-f6e7-4571-818b-6a12f2af6b6c";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "f28a1f50-f6e7-4571-818b-6a12f2af6b6c";
            Version              = "1";
        }
        AADRoleDefinition a7bed01b-b6a2-4342-81d3-e8b3678bf57a
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Skype for Business product.";
            DisplayName          = "Skype for Business Administrator";
            Ensure               = "Present";
            Id                   = "75941009-915a-4869-abe7-691bff18279e";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "75941009-915a-4869-abe7-691bff18279e";
            Version              = "1";
        }
        AADRoleDefinition 20ee1fc1-1f2a-440a-b8f9-f2a2adbdf76a
        {
            Credential           = $Credscredential;
            Description          = "Users assigned to this role are added to the local administrators group on Azure AD-joined devices.";
            DisplayName          = "Azure AD Joined Device Local Administrator";
            Ensure               = "Present";
            Id                   = "9f06204d-73c1-4d4c-880a-6edb90606fd8";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groupSettings/standard/read","microsoft.directory/groupSettingTemplates/standard/read");
            TemplateId           = "9f06204d-73c1-4d4c-880a-6edb90606fd8";
            Version              = "1";
        }
        AADRoleDefinition 18540848-827b-410d-90f1-fb01f41881d1
        {
            Credential           = $Credscredential;
            Description          = "Can read and manage compliance configuration and reports in Azure AD and Microsoft 365.";
            DisplayName          = "Compliance Administrator";
            Ensure               = "Present";
            Id                   = "17315797-102d-40b4-93e0-432062caca18";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.directory/entitlementManagement/allProperties/read","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "17315797-102d-40b4-93e0-432062caca18";
            Version              = "1";
        }
        AADRoleDefinition 58cd91c9-9822-4ea6-a6a0-67bbbd4e410b
        {
            Credential           = $Credscredential;
            Description          = "Only used by Azure AD Connect service.";
            DisplayName          = "Directory Synchronization Accounts";
            Ensure               = "Present";
            Id                   = "d29b2b05-8046-44ba-8758-1e26182fcf32";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/hybridAuthenticationPolicy/allProperties/allTasks","microsoft.directory/organization/dirSync/update","microsoft.directory/passwordHashSync/allProperties/allTasks","microsoft.directory/policies/create","microsoft.directory/policies/delete","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/policies/tenantDefault/update","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update");
            TemplateId           = "d29b2b05-8046-44ba-8758-1e26182fcf32";
            Version              = "1";
        }
        AADRoleDefinition f4d9ec5e-eb3b-45eb-847a-e82ac8c76823
        {
            Credential           = $Credscredential;
            Description          = "Deprecated - Do Not Use.";
            DisplayName          = "Device Managers";
            Ensure               = "Present";
            Id                   = "2b499bcd-da44-4968-8aec-78e1674fa64d";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/devices/basic/update","microsoft.directory/devices/extensionAttributeSet1/update","microsoft.directory/devices/extensionAttributeSet2/update","microsoft.directory/devices/extensionAttributeSet3/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update");
            TemplateId           = "2b499bcd-da44-4968-8aec-78e1674fa64d";
            Version              = "1";
        }
        AADRoleDefinition 8f0a9f4d-1946-413d-81d9-d07ac4cb2a41
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of app registrations and enterprise apps.";
            DisplayName          = "Application Administrator";
            Ensure               = "Present";
            Id                   = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/adminConsentRequestPolicy/allProperties/allTasks","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/applicationProxy/read","microsoft.directory/applications/applicationProxy/update","microsoft.directory/applications/applicationProxyAuthentication/update","microsoft.directory/applications/applicationProxySslCertificate/update","microsoft.directory/applications/applicationProxyUrlSettings/update","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/extensionProperties/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/verification/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/connectors/create","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/create","microsoft.directory/connectorGroups/delete","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/connectorGroups/allProperties/update","microsoft.directory/customAuthenticationExtensions/allProperties/allTasks","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/applicationPolicies/create","microsoft.directory/applicationPolicies/delete","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/applicationPolicies/owners/read","microsoft.directory/applicationPolicies/policyAppliedTo/read","microsoft.directory/applicationPolicies/basic/update","microsoft.directory/applicationPolicies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-application-admin","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
            Version              = "1";
        }
        AADRoleDefinition b9a40efd-66ee-4240-831a-5b7ea7a30f3b
        {
            Credential           = $Credscredential;
            Description          = "Can create application registrations independent of the 'Users can register applications' setting.";
            DisplayName          = "Application Developer";
            Ensure               = "Present";
            Id                   = "cf1c38e5-3621-4004-a7cb-879624dced7c";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/createAsOwner","microsoft.directory/oAuth2PermissionGrants/createAsOwner","microsoft.directory/servicePrincipals/createAsOwner");
            TemplateId           = "cf1c38e5-3621-4004-a7cb-879624dced7c";
            Version              = "1";
        }
        AADRoleDefinition 65d83bdb-ed13-4a13-9037-aa16b0d5b78f
        {
            Credential           = $Credscredential;
            Description          = "Can read security information and reports in Azure AD and Office 365.";
            DisplayName          = "Security Reader";
            Ensure               = "Present";
            Id                   = "5d6b6bb7-de71-4623-b4af-96380a352509";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions/allProperties/read","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/namedLocations/standard/read","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.protectionCenter/allEntities/standard/read","microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "5d6b6bb7-de71-4623-b4af-96380a352509";
            Version              = "1";
        }
        AADRoleDefinition 9b018dd5-41c8-4b0f-9927-f735941efd8c
        {
            Credential           = $Credscredential;
            Description          = "Can read security information and reports, and manage configuration in Azure AD and Office 365.";
            DisplayName          = "Security Administrator";
            Ensure               = "Present";
            Id                   = "194ae4cb-b126-40b2-bd5b-6091b380977d";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/policies/update","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/crossTenantAccessPolicy/standard/read","microsoft.directory/crossTenantAccessPolicy/allowedCloudEndpoints/update","microsoft.directory/crossTenantAccessPolicy/basic/update","microsoft.directory/crossTenantAccessPolicy/default/standard/read","microsoft.directory/crossTenantAccessPolicy/default/b2bCollaboration/update","microsoft.directory/crossTenantAccessPolicy/default/b2bDirectConnect/update","microsoft.directory/crossTenantAccessPolicy/default/crossCloudMeetings/update","microsoft.directory/crossTenantAccessPolicy/default/tenantRestrictions/update","microsoft.directory/crossTenantAccessPolicy/partners/create","microsoft.directory/crossTenantAccessPolicy/partners/delete","microsoft.directory/crossTenantAccessPolicy/partners/standard/read","microsoft.directory/crossTenantAccessPolicy/partners/b2bCollaboration/update","microsoft.directory/crossTenantAccessPolicy/partners/b2bDirectConnect/update","microsoft.directory/crossTenantAccessPolicy/partners/crossCloudMeetings/update","microsoft.directory/crossTenantAccessPolicy/partners/tenantRestrictions/update","microsoft.directory/domains/federation/update","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/identityProtection/allProperties/update","microsoft.directory/namedLocations/create","microsoft.directory/namedLocations/delete","microsoft.directory/namedLocations/standard/read","microsoft.directory/namedLocations/basic/update","microsoft.directory/policies/create","microsoft.directory/policies/delete","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/policies/tenantDefault/update","microsoft.directory/conditionalAccessPolicies/create","microsoft.directory/conditionalAccessPolicies/delete","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/basic/update","microsoft.directory/conditionalAccessPolicies/owners/update","microsoft.directory/conditionalAccessPolicies/tenantDefault/update","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.protectionCenter/allEntities/standard/read","microsoft.office365.protectionCenter/allEntities/basic/update","microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "194ae4cb-b126-40b2-bd5b-6091b380977d";
            Version              = "1";
        }
        AADRoleDefinition c9621adb-a24f-4855-bc11-6d324a7c0e3e
        {
            Credential           = $Credscredential;
            Description          = "Can manage role assignments in Azure AD, and all aspects of Privileged Identity Management.";
            DisplayName          = "Privileged Role Administrator";
            Ensure               = "Present";
            Id                   = "e8611ab8-c189-46e8-94e1-60213ab1f814";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions.applications/allProperties/read","microsoft.directory/accessReviews/definitions.directoryRoles/allProperties/allTasks","microsoft.directory/accessReviews/definitions.groupsAssignableToRoles/allProperties/update","microsoft.directory/accessReviews/definitions.groupsAssignableToRoles/create","microsoft.directory/accessReviews/definitions.groupsAssignableToRoles/delete","microsoft.directory/accessReviews/definitions.groups/allProperties/read","microsoft.directory/administrativeUnits/allProperties/allTasks","microsoft.directory/authorizationPolicy/allProperties/allTasks","microsoft.directory/directoryRoles/allProperties/allTasks","microsoft.directory/groupsAssignableToRoles/create","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/allTasks","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-company-admin","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e8611ab8-c189-46e8-94e1-60213ab1f814";
            Version              = "1";
        }
        AADRoleDefinition b77af8a9-83fa-4d5f-ab00-3996a0af3d3a
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Intune product.";
            DisplayName          = "Intune Administrator";
            Ensure               = "Present";
            Id                   = "3a2c62db-5318-420d-8d74-23affee5d9d5";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/bitlockerKeys/key/read","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/deletedItems.devices/delete","microsoft.directory/deletedItems.devices/restore","microsoft.directory/devices/create","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/devices/basic/update","microsoft.directory/devices/extensionAttributeSet1/update","microsoft.directory/devices/extensionAttributeSet2/update","microsoft.directory/devices/extensionAttributeSet3/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.security/create","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/classification/update","microsoft.directory/groups.security/dynamicMembershipRule/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.directory/groups.security/visibility/update","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/photo/update","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.cloudPC/allEntities/allProperties/allTasks","microsoft.intune/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "3a2c62db-5318-420d-8d74-23affee5d9d5";
            Version              = "1";
        }
        AADRoleDefinition c31c2392-aab3-46d8-8c48-9c13748950cd
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of app registrations and enterprise apps except App Proxy.";
            DisplayName          = "Cloud Application Administrator";
            Ensure               = "Present";
            Id                   = "158c047a-c907-4556-b7ef-446551a6b5f7";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/adminConsentRequestPolicy/allProperties/allTasks","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/extensionProperties/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/verification/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/applicationPolicies/create","microsoft.directory/applicationPolicies/delete","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/applicationPolicies/owners/read","microsoft.directory/applicationPolicies/policyAppliedTo/read","microsoft.directory/applicationPolicies/basic/update","microsoft.directory/applicationPolicies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-application-admin","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "158c047a-c907-4556-b7ef-446551a6b5f7";
            Version              = "1";
        }
        AADRoleDefinition e607397d-b7d6-4133-9640-d3c9ff5638b7
        {
            Credential           = $Credscredential;
            Description          = "Can approve Microsoft support requests to access customer organizational data.";
            DisplayName          = "Customer LockBox Access Approver";
            Ensure               = "Present";
            Id                   = "5c4f9dcd-47dc-4cf7-8c9a-9e4207cbfc91";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.lockbox/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "5c4f9dcd-47dc-4cf7-8c9a-9e4207cbfc91";
            Version              = "1";
        }
        AADRoleDefinition 42355152-92b5-48b2-b118-ae5faf0c24ca
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Dynamics 365 product.";
            DisplayName          = "Dynamics 365 Administrator";
            Ensure               = "Present";
            Id                   = "44367163-eba1-44c3-98af-f5787879f96a";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "44367163-eba1-44c3-98af-f5787879f96a";
            Version              = "1";
        }
        AADRoleDefinition 606bb1e6-7d5a-40f1-8540-4a9a681335fd
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Power BI product.";
            DisplayName          = "Power BI Administrator";
            Ensure               = "Present";
            Id                   = "a9ea8996-122f-4c74-9520-8edcd192826c";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.powerApps.powerBI/allEntities/allTasks");
            TemplateId           = "a9ea8996-122f-4c74-9520-8edcd192826c";
            Version              = "1";
        }
        AADRoleDefinition 5fff087a-9687-4219-8f96-764bfbd96ee5
        {
            Credential           = $Credscredential;
            Description          = "Can manage Conditional Access capabilities.";
            DisplayName          = "Conditional Access Administrator";
            Ensure               = "Present";
            Id                   = "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/namedLocations/create","microsoft.directory/namedLocations/delete","microsoft.directory/namedLocations/standard/read","microsoft.directory/namedLocations/basic/update","microsoft.directory/conditionalAccessPolicies/create","microsoft.directory/conditionalAccessPolicies/delete","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/basic/update","microsoft.directory/conditionalAccessPolicies/owners/update","microsoft.directory/conditionalAccessPolicies/tenantDefault/update");
            TemplateId           = "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9";
            Version              = "1";
        }
        AADRoleDefinition 36166959-07f3-4115-9ad9-a5434f17dd5b
        {
            Credential           = $Credscredential;
            Description          = "Can read sign-in and audit reports.";
            DisplayName          = "Reports Reader";
            Ensure               = "Present";
            Id                   = "4a5d8f65-41da-4de4-8968-e035b65339cf";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4a5d8f65-41da-4de4-8968-e035b65339cf";
            Version              = "1";
        }
        AADRoleDefinition 7e3acdf0-39b3-42a7-853c-7fdc03978ac7
        {
            Credential           = $Credscredential;
            Description          = "Can read messages and updates for their organization in Office 365 Message Center only.";
            DisplayName          = "Message Center Reader";
            Ensure               = "Present";
            Id                   = "790c1fb9-7f7d-4f88-86a1-ef1f95c05c1b";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "790c1fb9-7f7d-4f88-86a1-ef1f95c05c1b";
            Version              = "1";
        }
        AADRoleDefinition 76f9047f-a24a-4c0d-a27c-1aa4de674e41
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Azure Information Protection product.";
            DisplayName          = "Azure Information Protection Administrator";
            Ensure               = "Present";
            Id                   = "7495fdc4-34c4-4d15-a289-98788ce399fd";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "7495fdc4-34c4-4d15-a289-98788ce399fd";
            Version              = "1";
        }
        AADRoleDefinition 9ad6c576-1f10-449b-9d3e-7de2cbba098b
        {
            Credential           = $Credscredential;
            Description          = "Can access and manage Desktop management tools and services.";
            DisplayName          = "Desktop Analytics Administrator";
            Ensure               = "Present";
            Id                   = "38a96431-2bdf-4b4c-8b6e-5d3d8abac1a4";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.desktopAnalytics/allEntities/allTasks");
            TemplateId           = "38a96431-2bdf-4b4c-8b6e-5d3d8abac1a4";
            Version              = "1";
        }
        AADRoleDefinition 2de27147-d70f-444e-822e-cb6ea2a7d31c
        {
            Credential           = $Credscredential;
            Description          = "Can manage product licenses on users and groups.";
            DisplayName          = "License Administrator";
            Ensure               = "Present";
            Id                   = "4d6ac14f-3453-41d0-bef9-a3e0c569773a";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/groups/assignLicense","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/users/assignLicense","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/usageLocation/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4d6ac14f-3453-41d0-bef9-a3e0c569773a";
            Version              = "1";
        }
        AADRoleDefinition c5949b96-5ca9-4402-95d5-7882fcf261c9
        {
            Credential           = $Credscredential;
            Description          = "Limited access to manage devices in Azure AD.";
            DisplayName          = "Cloud Device Administrator";
            Ensure               = "Present";
            Id                   = "7698a772-787b-4ac8-901f-60d6b08affd2";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/deletedItems.devices/delete","microsoft.directory/deletedItems.devices/restore","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceManagementPolicies/basic/update","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/deviceRegistrationPolicy/basic/update","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks");
            TemplateId           = "7698a772-787b-4ac8-901f-60d6b08affd2";
            Version              = "1";
        }
        AADRoleDefinition 717e29a8-75ee-45e5-8464-52314d0794eb
        {
            Credential           = $Credscredential;
            Description          = "Can access to view, set and reset authentication method information for any non-admin user.";
            DisplayName          = "Authentication Administrator";
            Ensure               = "Present";
            Id                   = "c4e39bd9-1100-46d3-8c65-fb160da0071f";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/authenticationMethods/create","microsoft.directory/users/authenticationMethods/delete","microsoft.directory/users/authenticationMethods/standard/restrictedRead","microsoft.directory/users/authenticationMethods/basic/update","microsoft.directory/deletedItems.users/restore","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "c4e39bd9-1100-46d3-8c65-fb160da0071f";
            Version              = "1";
        }
        AADRoleDefinition d5d266b8-6b10-4b9e-bbaf-080469414a57
        {
            Credential           = $Credscredential;
            Description          = "Can access to view, set and reset authentication method information for any user (admin or non-admin).";
            DisplayName          = "Privileged Authentication Administrator";
            Ensure               = "Present";
            Id                   = "7be44c8a-adaf-4e2a-84d6-ab2649e08a13";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/authenticationMethods/create","microsoft.directory/users/authenticationMethods/delete","microsoft.directory/users/authenticationMethods/standard/read","microsoft.directory/users/authenticationMethods/basic/update","microsoft.directory/deletedItems.users/restore","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "7be44c8a-adaf-4e2a-84d6-ab2649e08a13";
            Version              = "1";
        }
        AADRoleDefinition 40ae4ca5-eb95-41c5-a654-6df07b12252c
        {
            Credential           = $Credscredential;
            Description          = "Can manage calling and meetings features within the Microsoft Teams service.";
            DisplayName          = "Teams Communications Administrator";
            Ensure               = "Present";
            Id                   = "baf37b3a-610e-45da-9e62-d9d1e5e8914b";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/allProperties/read","microsoft.teams/meetings/allProperties/allTasks","microsoft.teams/voice/allProperties/allTasks");
            TemplateId           = "baf37b3a-610e-45da-9e62-d9d1e5e8914b";
            Version              = "1";
        }
        AADRoleDefinition 8e86a5d7-5dd4-4559-886e-cbbc2f1bd0d3
        {
            Credential           = $Credscredential;
            Description          = "Can troubleshoot communications issues within Teams using advanced tools.";
            DisplayName          = "Teams Communications Support Engineer";
            Ensure               = "Present";
            Id                   = "f70938a0-fc10-4177-9e90-2178f8765737";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/allProperties/read");
            TemplateId           = "f70938a0-fc10-4177-9e90-2178f8765737";
            Version              = "1";
        }
        AADRoleDefinition 2a74811f-114b-46b0-a36e-51c50973ce7a
        {
            Credential           = $Credscredential;
            Description          = "Can troubleshoot communications issues within Teams using basic tools.";
            DisplayName          = "Teams Communications Support Specialist";
            Ensure               = "Present";
            Id                   = "fcf91098-03e3-41a9-b5ba-6f0ec8188a12";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/standard/read");
            TemplateId           = "fcf91098-03e3-41a9-b5ba-6f0ec8188a12";
            Version              = "1";
        }
        AADRoleDefinition 688ceae4-3534-476c-8c1a-68cfe4f69258
        {
            Credential           = $Credscredential;
            Description          = "Can manage the Microsoft Teams service.";
            DisplayName          = "Teams Administrator";
            Ensure               = "Present";
            Id                   = "69091246-20e8-4a56-aa4d-066075b2a7a8";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/allEntities/allProperties/allTasks","microsoft.directory/crossTenantAccessPolicy/standard/read","microsoft.directory/crossTenantAccessPolicy/allowedCloudEndpoints/update","microsoft.directory/crossTenantAccessPolicy/basic/update","microsoft.directory/crossTenantAccessPolicy/default/standard/read","microsoft.directory/crossTenantAccessPolicy/default/b2bCollaboration/update","microsoft.directory/crossTenantAccessPolicy/default/b2bDirectConnect/update","microsoft.directory/crossTenantAccessPolicy/default/crossCloudMeetings/update","microsoft.directory/crossTenantAccessPolicy/default/tenantRestrictions/update","microsoft.directory/crossTenantAccessPolicy/partners/create","microsoft.directory/crossTenantAccessPolicy/partners/delete","microsoft.directory/crossTenantAccessPolicy/partners/standard/read","microsoft.directory/crossTenantAccessPolicy/partners/b2bCollaboration/update","microsoft.directory/crossTenantAccessPolicy/partners/b2bDirectConnect/update","microsoft.directory/crossTenantAccessPolicy/partners/crossCloudMeetings/update","microsoft.directory/crossTenantAccessPolicy/partners/tenantRestrictions/update");
            TemplateId           = "69091246-20e8-4a56-aa4d-066075b2a7a8";
            Version              = "1";
        }
        AADRoleDefinition 690d3364-81d3-4487-ba63-8f53124d2475
        {
            Credential           = $Credscredential;
            Description          = "Has administrative access in the Microsoft 365 Insights app.";
            DisplayName          = "Insights Administrator";
            Ensure               = "Present";
            Id                   = "eb1f4a8d-243a-41f0-9fbd-c7cdf6c5ef7c";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.insights/allEntities/allProperties/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "eb1f4a8d-243a-41f0-9fbd-c7cdf6c5ef7c";
            Version              = "1";
        }
        AADRoleDefinition f9daf728-a37d-4be2-94a8-b932e6325f0e
        {
            Credential           = $Credscredential;
            Description          = "Can read security messages and updates in Office 365 Message Center only.";
            DisplayName          = "Message Center Privacy Reader";
            Ensure               = "Present";
            Id                   = "ac16e43d-7b2d-40e0-ac05-243ff356ab5b";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "ac16e43d-7b2d-40e0-ac05-243ff356ab5b";
            Version              = "1";
        }
        AADRoleDefinition 5334c9af-d4ab-475b-962e-deeb96f5ef4d
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of user flows.";
            DisplayName          = "External ID User Flow Administrator";
            Ensure               = "Present";
            Id                   = "6e591065-9bad-43ed-90f3-e9424366d2f0";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cUserFlow/allProperties/allTasks";
            TemplateId           = "6e591065-9bad-43ed-90f3-e9424366d2f0";
            Version              = "1";
        }
        AADRoleDefinition 6007e51f-71ce-48a2-a405-6cf0fbf06113
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage the attribute schema available to all user flows.";
            DisplayName          = "External ID User Flow Attribute Administrator";
            Ensure               = "Present";
            Id                   = "0f971eea-41eb-4569-a71e-57bb8a3eff1e";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cUserAttribute/allProperties/allTasks";
            TemplateId           = "0f971eea-41eb-4569-a71e-57bb8a3eff1e";
            Version              = "1";
        }
        AADRoleDefinition bd706745-8ed3-4c0a-9745-24f98e946d54
        {
            Credential           = $Credscredential;
            Description          = "Can manage secrets for federation and encryption in the Identity Experience Framework (IEF).";
            DisplayName          = "B2C IEF Keyset Administrator";
            Ensure               = "Present";
            Id                   = "aaf43236-0c0d-4d5f-883a-6955382ac081";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cTrustFrameworkKeySet/allProperties/allTasks";
            TemplateId           = "aaf43236-0c0d-4d5f-883a-6955382ac081";
            Version              = "1";
        }
        AADRoleDefinition 639885d4-a9e5-44f4-8a8c-664a26522e86
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage trust framework policies in the Identity Experience Framework (IEF).";
            DisplayName          = "B2C IEF Policy Administrator";
            Ensure               = "Present";
            Id                   = "3edaf663-341e-4475-9f94-5c398ef6c070";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cTrustFrameworkPolicy/allProperties/allTasks";
            TemplateId           = "3edaf663-341e-4475-9f94-5c398ef6c070";
            Version              = "1";
        }
        AADRoleDefinition e87235d0-7be3-4da5-af6a-cbaed06ec97e
        {
            Credential           = $Credscredential;
            Description          = "Can configure identity providers for use in direct federation.";
            DisplayName          = "External Identity Provider Administrator";
            Ensure               = "Present";
            Id                   = "be2f45a1-457d-42af-a067-6ec1fa63bc45";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/domains/federation/update","microsoft.directory/identityProviders/allProperties/allTasks");
            TemplateId           = "be2f45a1-457d-42af-a067-6ec1fa63bc45";
            Version              = "1";
        }
        AADRoleDefinition 84bab824-d70c-47a6-a848-bb1b40d4dec9
        {
            Credential           = $Credscredential;
            Description          = "Creates and manages compliance content.";
            DisplayName          = "Compliance Data Administrator";
            Ensure               = "Present";
            Id                   = "e6d1a23a-da11-4be4-9570-befc86d067a7";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e6d1a23a-da11-4be4-9570-befc86d067a7";
            Version              = "1";
        }
        AADRoleDefinition 6afe06a2-308f-4e2c-83ee-19df3be993f5
        {
            Credential           = $Credscredential;
            Description          = "Creates and manages security events.";
            DisplayName          = "Security Operator";
            Ensure               = "Present";
            Id                   = "5f2222b1-57c3-48ba-8ad5-d4759f1fde6f";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.directory/identityProtection/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.advancedThreatProtection/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.intune/allEntities/read","microsoft.office365.securityComplianceCenter/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.windows.defenderAdvancedThreatProtection/allEntities/allTasks");
            TemplateId           = "5f2222b1-57c3-48ba-8ad5-d4759f1fde6f";
            Version              = "1";
        }
        AADRoleDefinition 48778ac1-6ec4-43f7-a458-f78a16fecb06
        {
            Credential           = $Credscredential;
            Description          = "Can manage settings for Microsoft Kaizala.";
            DisplayName          = "Kaizala Administrator";
            Ensure               = "Present";
            Id                   = "74ef975b-6605-40af-a5d2-b9539d836353";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/authorizationPolicy/standard/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "74ef975b-6605-40af-a5d2-b9539d836353";
            Version              = "1";
        }
        AADRoleDefinition 429be56b-972e-46f5-975d-e239c7cdd838
        {
            Credential           = $Credscredential;
            Description          = "Can read everything that a Global Administrator can, but not update anything.";
            DisplayName          = "Global Reader";
            Ensure               = "Present";
            Id                   = "f2ef992c-3afb-46b9-b7cf-a126ee74c451";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/allProperties/read","microsoft.directory/accessReviews/definitions/allProperties/read","microsoft.directory/adminConsentRequestPolicy/allProperties/read","microsoft.directory/administrativeUnits/allProperties/read","microsoft.directory/appConsent/appConsentRequests/allProperties/read","microsoft.directory/applications/allProperties/read","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/users/authenticationMethods/standard/restrictedRead","microsoft.directory/authorizationPolicy/standard/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/cloudAppSecurity/allProperties/read","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/contacts/allProperties/read","microsoft.directory/customAuthenticationExtensions/allProperties/read","microsoft.directory/devices/allProperties/read","microsoft.directory/directoryRoles/allProperties/read","microsoft.directory/directoryRoleTemplates/allProperties/read","microsoft.directory/domains/allProperties/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/groups/allProperties/read","microsoft.directory/groupSettings/allProperties/read","microsoft.directory/groupSettingTemplates/allProperties/read","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/loginOrganizationBranding/allProperties/read","microsoft.directory/namedLocations/standard/read","microsoft.directory/oAuth2PermissionGrants/allProperties/read","microsoft.directory/organization/allProperties/read","microsoft.directory/permissionGrantPolicies/standard/read","microsoft.directory/policies/allProperties/read","microsoft.directory/conditionalAccessPolicies/allProperties/read","microsoft.directory/crossTenantAccessPolicy/standard/read","microsoft.directory/crossTenantAccessPolicy/default/standard/read","microsoft.directory/crossTenantAccessPolicy/partners/standard/read","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/roleAssignments/allProperties/read","microsoft.directory/roleDefinitions/allProperties/read","microsoft.directory/scopedRoleMemberships/allProperties/read","microsoft.directory/serviceAction/getAvailableExtentionProperties","microsoft.directory/servicePrincipals/allProperties/read","microsoft.directory/servicePrincipalCreationPolicies/standard/read","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.directory/subscribedSkus/allProperties/read","microsoft.directory/users/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.directory/lifecycleWorkflows/workflows/allProperties/read","microsoft.cloudPC/allEntities/allProperties/read","microsoft.commerce.billing/allEntities/allProperties/read","microsoft.edge/allEntities/allProperties/read","microsoft.insights/allEntities/allProperties/read","microsoft.office365.exchange/allEntities/standard/read","microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.network/performance/allProperties/read","microsoft.office365.protectionCenter/allEntities/allProperties/read","microsoft.office365.securityComplianceCenter/allEntities/read","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.office365.yammer/allEntities/allProperties/read","microsoft.permissionsManagement/allEntities/allProperties/read","microsoft.teams/allEntities/allProperties/read","microsoft.virtualVisits/allEntities/allProperties/read","microsoft.windows.updatesDeployments/allEntities/allProperties/read");
            TemplateId           = "f2ef992c-3afb-46b9-b7cf-a126ee74c451";
            Version              = "1";
        }
        AADRoleDefinition 6700992c-10d5-4b9c-8fce-0632f0a7fe87
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of Microsoft Search settings.";
            DisplayName          = "Search Administrator";
            Ensure               = "Present";
            Id                   = "0964bb5e-9bdb-4d7b-ac29-58e794862a40";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.search/content/manage","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "0964bb5e-9bdb-4d7b-ac29-58e794862a40";
            Version              = "1";
        }
        AADRoleDefinition 9fed32b9-3722-44ed-828f-e1b90a6d318b
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage the editorial content such as bookmarks, Q and As, locations, floorplan.";
            DisplayName          = "Search Editor";
            Ensure               = "Present";
            Id                   = "8835291a-918c-4fd7-a9ce-faa49f0cf7d9";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.search/content/manage","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8835291a-918c-4fd7-a9ce-faa49f0cf7d9";
            Version              = "1";
        }
        AADRoleDefinition 814768b9-cc73-4f1a-b169-a26e519e1630
        {
            Credential           = $Credscredential;
            Description          = "Can reset passwords for non-administrators and Password Administrators.";
            DisplayName          = "Password Administrator";
            Ensure               = "Present";
            Id                   = "966707d0-3269-4727-9be2-8c3a10f19b9d";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/password/update","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "966707d0-3269-4727-9be2-8c3a10f19b9d";
            Version              = "1";
        }
        AADRoleDefinition 977f1470-44ef-448c-bf1e-7968f40e714a
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of printers and printer connectors.";
            DisplayName          = "Printer Administrator";
            Ensure               = "Present";
            Id                   = "644ef478-e28f-4e28-b9dc-3fdde9aa0b1f";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.azure.print/allEntities/allProperties/allTasks";
            TemplateId           = "644ef478-e28f-4e28-b9dc-3fdde9aa0b1f";
            Version              = "1";
        }
        AADRoleDefinition 79aea55b-4c9c-4981-8b6b-5b3c87f626b5
        {
            Credential           = $Credscredential;
            Description          = "Can register and unregister printers and update printer status.";
            DisplayName          = "Printer Technician";
            Ensure               = "Present";
            Id                   = "e8cef6f1-e4bd-4ea8-bc07-4b8d950f4477";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.print/connectors/allProperties/read","microsoft.azure.print/printers/allProperties/read","microsoft.azure.print/printers/register","microsoft.azure.print/printers/unregister","microsoft.azure.print/printers/basic/update");
            TemplateId           = "e8cef6f1-e4bd-4ea8-bc07-4b8d950f4477";
            Version              = "1";
        }
        AADRoleDefinition 9c2e6375-3152-472a-ab4b-ef5cddd02bce
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage the authentication methods policy, tenant-wide MFA settings, password protection policy, and verifiable credentials.";
            DisplayName          = "Authentication Policy Administrator";
            Ensure               = "Present";
            Id                   = "0526716b-113d-4c15-b2c8-68e3c22b9f80";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/organization/strongAuthentication/allTasks","microsoft.directory/userCredentialPolicies/create","microsoft.directory/userCredentialPolicies/delete","microsoft.directory/userCredentialPolicies/standard/read","microsoft.directory/userCredentialPolicies/owners/read","microsoft.directory/userCredentialPolicies/policyAppliedTo/read","microsoft.directory/userCredentialPolicies/basic/update","microsoft.directory/userCredentialPolicies/owners/update","microsoft.directory/userCredentialPolicies/tenantDefault/update","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/revoke","microsoft.directory/verifiableCredentials/configuration/contracts/create","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/update","microsoft.directory/verifiableCredentials/configuration/create","microsoft.directory/verifiableCredentials/configuration/delete","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/update","microsoft.azure.supportTickets/allEntities/allTasks");
            TemplateId           = "0526716b-113d-4c15-b2c8-68e3c22b9f80";
            Version              = "1";
        }
        AADRoleDefinition 77881945-3c94-4225-aee7-adc900a551f4
        {
            Credential           = $Credscredential;
            Description          = "Members of this role can create/manage groups, create/manage groups settings like naming and expiration policies, and view groups activity and audit reports.";
            DisplayName          = "Groups Administrator";
            Ensure               = "Present";
            Id                   = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/deletedItems.groups/delete","microsoft.directory/deletedItems.groups/restore","microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
            Version              = "1";
        }
        AADRoleDefinition 4e98fbc3-6fd8-483f-96f2-1ac657223e4c
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of Microsoft Dynamics 365, PowerApps and Microsoft Flow.";
            DisplayName          = "Power Platform Administrator";
            Ensure               = "Present";
            Id                   = "11648597-926c-4cf3-9c36-bcebb0ba8dcc";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.flow/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.powerApps/allEntities/allTasks");
            TemplateId           = "11648597-926c-4cf3-9c36-bcebb0ba8dcc";
            Version              = "1";
        }
        AADRoleDefinition 57e81d15-a07f-4688-8e3e-571afb5c4e0d
        {
            Credential           = $Credscredential;
            Description          = "Can manage Azure DevOps organization policy and settings.";
            DisplayName          = "Azure DevOps Administrator";
            Ensure               = "Present";
            Id                   = "e3973bdf-4987-49ae-837a-ba8e231c7286";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.azure.devOps/allEntities/allTasks";
            TemplateId           = "e3973bdf-4987-49ae-837a-ba8e231c7286";
            Version              = "1";
        }
        AADRoleDefinition 129870d8-91c1-4502-9ca9-8536e6c269eb
        {
            Credential           = $Credscredential;
            Description          = "Can manage AD to Azure AD cloud provisioning, Azure AD Connect, and federation settings.";
            DisplayName          = "Hybrid Identity Administrator";
            Ensure               = "Present";
            Id                   = "8ac3fc64-6eca-42ea-9e69-59f4c7b60eb2";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/notes/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/tag/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/cloudProvisioning/allProperties/allTasks","microsoft.directory/deletedItems.applications/delete","microsoft.directory/deletedItems.applications/restore","microsoft.directory/domains/allProperties/read","microsoft.directory/domains/federation/update","microsoft.directory/hybridAuthenticationPolicy/allProperties/allTasks","microsoft.directory/organization/dirSync/update","microsoft.directory/passwordHashSync/allProperties/allTasks","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/notes/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8ac3fc64-6eca-42ea-9e69-59f4c7b60eb2";
            Version              = "1";
        }
        AADRoleDefinition 1b8039e5-07f4-4d8a-b14c-1416bd81e3b4
        {
            Credential           = $Credscredential;
            Description          = "Can manage Office apps cloud services, including policy and settings management, and manage the ability to select, unselect and publish 'what's new' feature content to end-user's devices.";
            DisplayName          = "Office Apps Administrator";
            Ensure               = "Present";
            Id                   = "2b745bdf-0803-4d80-aa65-822c4493daac";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.userCommunication/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "2b745bdf-0803-4d80-aa65-822c4493daac";
            Version              = "1";
        }
        AADRoleDefinition 17464b67-80d2-4f0a-a029-5c32ca453ef4
        {
            Credential           = $Credscredential;
            Description          = "Can manage network locations and review enterprise network design insights for Microsoft 365 Software as a Service applications.";
            DisplayName          = "Network Administrator";
            Ensure               = "Present";
            Id                   = "d37c8bed-0711-4417-ba38-b4abe66ce4c2";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.network/locations/allProperties/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "d37c8bed-0711-4417-ba38-b4abe66ce4c2";
            Version              = "1";
        }
        AADRoleDefinition b7e24914-c456-4817-9765-ec7bfb74ab03
        {
            Credential           = $Credscredential;
            Description          = "Can view and share dashboards and insights via the M365 Insights app.";
            DisplayName          = "Insights Business Leader";
            Ensure               = "Present";
            Id                   = "31e939ad-9672-4796-9c2e-873181342d2d";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.insights/reports/allProperties/read","microsoft.insights/programs/allProperties/update");
            TemplateId           = "31e939ad-9672-4796-9c2e-873181342d2d";
            Version              = "1";
        }
        AADRoleDefinition 0d646ba6-b8e8-4dd9-b71c-a7b3f4455bae
        {
            Credential           = $Credscredential;
            Description          = "Can perform management related tasks on Teams certified devices.";
            DisplayName          = "Teams Devices Administrator";
            Ensure               = "Present";
            Id                   = "3d762c5a-1b6c-493f-843e-55a3b42923d4";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/devices/standard/read");
            TemplateId           = "3d762c5a-1b6c-493f-843e-55a3b42923d4";
            Version              = "1";
        }
        AADRoleDefinition 3c6f291d-2e3a-4dea-8040-cc02e53862f6
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of attack simulation campaigns.";
            DisplayName          = "Attack Simulation Administrator";
            Ensure               = "Present";
            Id                   = "c430b396-e693-46cc-96f3-db01bf8bb62a";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/allTasks");
            TemplateId           = "c430b396-e693-46cc-96f3-db01bf8bb62a";
            Version              = "1";
        }
        AADRoleDefinition b86e2f37-4dba-40bc-a6fe-91f02294ea69
        {
            Credential           = $Credscredential;
            Description          = "Can create attack payloads that an administrator can initiate later.";
            DisplayName          = "Attack Payload Author";
            Ensure               = "Present";
            Id                   = "9c6df0f2-1e7c-4dc3-b195-66dfbd24aa8f";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read");
            TemplateId           = "9c6df0f2-1e7c-4dc3-b195-66dfbd24aa8f";
            Version              = "1";
        }
        AADRoleDefinition 7df090d9-75db-40ee-ab72-01a14cdd962f
        {
            Credential           = $Credscredential;
            Description          = "Can see only tenant level aggregates in Microsoft 365 Usage Analytics and Productivity Score.";
            DisplayName          = "Usage Summary Reports Reader";
            Ensure               = "Present";
            Id                   = "75934031-6c7e-415a-99d7-48dbd49e875e";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.network/performance/allProperties/read","microsoft.office365.usageReports/allEntities/standard/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "75934031-6c7e-415a-99d7-48dbd49e875e";
            Version              = "1";
        }
        AADRoleDefinition c7ac08f1-812a-4e52-8c5c-f99b06a41245
        {
            Credential           = $Credscredential;
            Description          = "Can configure knowledge, learning, and other intelligent features.";
            DisplayName          = "Knowledge Administrator";
            Ensure               = "Present";
            Id                   = "b5a8dcf3-09d5-43a9-a639-8e29ef291470";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.security/create","microsoft.directory/groups.security/createAsOwner","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.office365.knowledge/contentUnderstanding/allProperties/allTasks","microsoft.office365.knowledge/knowledgeNetwork/allProperties/allTasks","microsoft.office365.knowledge/learningSources/allProperties/allTasks","microsoft.office365.protectionCenter/sensitivityLabels/allProperties/read","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "b5a8dcf3-09d5-43a9-a639-8e29ef291470";
            Version              = "1";
        }
        AADRoleDefinition 3aa1aafa-27fe-4be4-a37c-3a0153aec794
        {
            Credential           = $Credscredential;
            Description          = "Has access to topic management dashboard and can manage content.";
            DisplayName          = "Knowledge Manager";
            Ensure               = "Present";
            Id                   = "744ec460-397e-42ad-a462-8b3f9747a02c";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.security/create","microsoft.directory/groups.security/createAsOwner","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.office365.knowledge/contentUnderstanding/analytics/allProperties/read","microsoft.office365.knowledge/knowledgeNetwork/topicVisibility/allProperties/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "744ec460-397e-42ad-a462-8b3f9747a02c";
            Version              = "1";
        }
        AADRoleDefinition 85e58d5c-b6f3-47d5-96d5-b80c26068a0e
        {
            Credential           = $Credscredential;
            Description          = "Can manage domain names in cloud and on-premises.";
            DisplayName          = "Domain Name Administrator";
            Ensure               = "Present";
            Id                   = "8329153b-31d0-4727-b945-745eb3bc5f31";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/domains/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8329153b-31d0-4727-b945-745eb3bc5f31";
            Version              = "1";
        }
        AADRoleDefinition 507c2290-a53f-4d37-b526-ddc6819259f8
        {
            Credential           = $Credscredential;
            Description          = "Define and manage the definition of custom security attributes.";
            DisplayName          = "Attribute Definition Administrator";
            Ensure               = "Present";
            Id                   = "8424c6f0-a189-499e-bbd0-26c1753c96d4";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/allTasks","microsoft.directory/customSecurityAttributeDefinitions/allProperties/allTasks");
            TemplateId           = "8424c6f0-a189-499e-bbd0-26c1753c96d4";
            Version              = "1";
        }
        AADRoleDefinition 4cd95f67-bd26-4ecb-a635-bff2c42b8b55
        {
            Credential           = $Credscredential;
            Description          = "Assign custom security attribute keys and values to supported Azure AD objects.";
            DisplayName          = "Attribute Assignment Administrator";
            Ensure               = "Present";
            Id                   = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/read","microsoft.directory/customSecurityAttributeDefinitions/allProperties/read","microsoft.directory/devices/customSecurityAttributes/read","microsoft.directory/devices/customSecurityAttributes/update","microsoft.directory/servicePrincipals/customSecurityAttributes/read","microsoft.directory/servicePrincipals/customSecurityAttributes/update","microsoft.directory/users/customSecurityAttributes/read","microsoft.directory/users/customSecurityAttributes/update");
            TemplateId           = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d";
            Version              = "1";
        }
        AADRoleDefinition 59c2f466-1895-4c44-87cc-98e5b612192b
        {
            Credential           = $Credscredential;
            Description          = "Read the definition of custom security attributes.";
            DisplayName          = "Attribute Definition Reader";
            Ensure               = "Present";
            Id                   = "1d336d2c-4ae8-42ef-9711-b3604ce3fc2c";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/read","microsoft.directory/customSecurityAttributeDefinitions/allProperties/read");
            TemplateId           = "1d336d2c-4ae8-42ef-9711-b3604ce3fc2c";
            Version              = "1";
        }
        AADRoleDefinition a98aa8ed-9c72-43d0-a13c-5d832a615aa8
        {
            Credential           = $Credscredential;
            Description          = "Read custom security attribute keys and values for supported Azure AD objects.";
            DisplayName          = "Attribute Assignment Reader";
            Ensure               = "Present";
            Id                   = "ffd52fa5-98dc-465c-991d-fc073eb59f8f";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/attributeSets/allProperties/read","microsoft.directory/customSecurityAttributeDefinitions/allProperties/read","microsoft.directory/devices/customSecurityAttributes/read","microsoft.directory/servicePrincipals/customSecurityAttributes/read","microsoft.directory/users/customSecurityAttributes/read");
            TemplateId           = "ffd52fa5-98dc-465c-991d-fc073eb59f8f";
            Version              = "1";
        }
        AADRoleDefinition 7e6ed6bb-cf25-468d-ba98-2a0fb1ad2713
        {
            Credential           = $Credscredential;
            Description          = "Can create or update Exchange Online recipients within the Exchange Online organization.";
            DisplayName          = "Exchange Recipient Administrator";
            Ensure               = "Present";
            Id                   = "31392ffb-586c-42d1-9346-e59415a2cc4e";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.exchange/allRecipients/allProperties/allTasks","microsoft.office365.exchange/migration/allProperties/allTasks");
            TemplateId           = "31392ffb-586c-42d1-9346-e59415a2cc4e";
            Version              = "1";
        }
        AADRoleDefinition a0e99882-4f15-4068-aac0-7b12cf1e9339
        {
            Credential           = $Credscredential;
            Description          = "Manage access using Azure AD for identity governance scenarios.";
            DisplayName          = "Identity Governance Administrator";
            Ensure               = "Present";
            Id                   = "45d8d3c5-c802-45c6-b32a-1d70b5e1e86e";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/definitions.applications/allProperties/allTasks","microsoft.directory/accessReviews/definitions.entitlementManagement/allProperties/allTasks","microsoft.directory/accessReviews/definitions.groups/allProperties/read","microsoft.directory/accessReviews/definitions.groups/allProperties/update","microsoft.directory/accessReviews/definitions.groups/create","microsoft.directory/accessReviews/definitions.groups/delete","microsoft.directory/accessReviews/allProperties/allTasks","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/members/update","microsoft.directory/servicePrincipals/appRoleAssignedTo/update");
            TemplateId           = "45d8d3c5-c802-45c6-b32a-1d70b5e1e86e";
            Version              = "1";
        }
        AADRoleDefinition fb8361d6-84c2-4da5-a188-574fd93590ed
        {
            Credential           = $Credscredential;
            Description          = "Can manage all aspects of the Cloud App Security product.";
            DisplayName          = "Cloud App Security Administrator";
            Ensure               = "Present";
            Id                   = "892c5842-a9a6-463a-8041-72aa08ca3cf6";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "892c5842-a9a6-463a-8041-72aa08ca3cf6";
            Version              = "1";
        }
        AADRoleDefinition 9f62435f-7701-490c-8589-e8ad89eb8c93
        {
            Credential           = $Credscredential;
            Description          = "Can create and manage all aspects of Windows Update deployments through the Windows Update for Business deployment service.";
            DisplayName          = "Windows Update Deployment Administrator";
            Ensure               = "Present";
            Id                   = "32696413-001a-46ae-978c-ce0f6b3620d2";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.windows.updatesDeployments/allEntities/allProperties/allTasks";
            TemplateId           = "32696413-001a-46ae-978c-ce0f6b3620d2";
            Version              = "1";
        }
        AADRoleDefinition dcaf3b37-761d-47d2-ba42-1c84c10bdec2
        {
            Credential           = $Credscredential;
            Description          = "Can provision and manage all aspects of Cloud PCs.";
            DisplayName          = "Windows 365 Administrator";
            Ensure               = "Present";
            Id                   = "11451d60-acb2-45eb-a7d6-43d0f0125c13";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/deletedItems.devices/delete","microsoft.directory/deletedItems.devices/restore","microsoft.directory/devices/create","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/devices/basic/update","microsoft.directory/devices/extensionAttributeSet1/update","microsoft.directory/devices/extensionAttributeSet2/update","microsoft.directory/devices/extensionAttributeSet3/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update","microsoft.directory/groups.security/create","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/classification/update","microsoft.directory/groups.security/dynamicMembershipRule/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.directory/groups.security/visibility/update","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.cloudPC/allEntities/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "11451d60-acb2-45eb-a7d6-43d0f0125c13";
            Version              = "1";
        }
        AADRoleDefinition 7d447215-f7c7-4120-ad97-53d09e22ceda
        {
            Credential           = $Credscredential;
            Description          = "Manage all aspects of Microsoft Edge.";
            DisplayName          = "Edge Administrator";
            Ensure               = "Present";
            Id                   = "3f1acade-1e04-4fbc-9b69-f0302cd84aef";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.edge/allEntities/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "3f1acade-1e04-4fbc-9b69-f0302cd84aef";
            Version              = "1";
        }
        AADRoleDefinition 258c671f-e255-4da2-bc13-c528486bafb9
        {
            Credential           = $Credscredential;
            Description          = "Manage all aspects of the Yammer service.";
            DisplayName          = "Yammer Administrator";
            Ensure               = "Present";
            Id                   = "810a2642-a034-447f-a5e8-41beaa378541";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.office365.messageCenter/messages/read","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.office365.yammer/allEntities/allProperties/allTasks");
            TemplateId           = "810a2642-a034-447f-a5e8-41beaa378541";
            Version              = "1";
        }
        AADRoleDefinition 9c59aacb-a44c-43f9-a6f9-2c2dd2fa7cf7
        {
            Credential           = $Credscredential;
            Description          = "Manage and share Virtual Visits information and metrics from admin centers or the Virtual Visits app.";
            DisplayName          = "Virtual Visits Administrator";
            Ensure               = "Present";
            Id                   = "e300d9e7-4a2b-4295-9eff-f1c78b36cc98";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.virtualVisits/allEntities/allProperties/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e300d9e7-4a2b-4295-9eff-f1c78b36cc98";
            Version              = "1";
        }
        AADRoleDefinition 0bf9b827-5350-41c0-82ad-849d523f2fc5
        {
            Credential           = $Credscredential;
            Description          = "Access the analytical capabilities in Microsoft Viva Insights and run custom queries.";
            DisplayName          = "Insights Analyst";
            Ensure               = "Present";
            Id                   = "25df335f-86eb-4119-b717-0ff02de207e9";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.insights/queries/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "25df335f-86eb-4119-b717-0ff02de207e9";
            Version              = "1";
        }
        AADRoleDefinition 63002998-d010-433d-8d5e-7cd318243028
        {
            Credential           = $Credscredential;
            Description          = "Create new Azure AD or Azure AD B2C tenants.";
            DisplayName          = "Tenant Creator";
            Ensure               = "Present";
            Id                   = "112ca1a2-15ad-4102-995e-45b0bc479a6a";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/tenantManagement/tenants/create";
            TemplateId           = "112ca1a2-15ad-4102-995e-45b0bc479a6a";
            Version              = "1";
        }
        AADRoleDefinition e7ef9f5a-ff99-4e5d-8e95-f992a7c36f42
        {
            Credential           = $Credscredential;
            Description          = "Create and manage all aspects of workflows and tasks associated with Lifecycle Workflows in Azure AD.";
            DisplayName          = "Lifecycle Workflows Administrator";
            Ensure               = "Present";
            Id                   = "59d46f88-662b-457b-bceb-5c3809e5908f";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/lifecycleWorkflows/workflows/allProperties/allTasks";
            TemplateId           = "59d46f88-662b-457b-bceb-5c3809e5908f";
            Version              = "1";
        }
        AADRoleDefinition 6cc04d21-c048-4358-8abb-4a06231e541a
        {
            Credential           = $Credscredential;
            Description          = "Manage all aspects of Entra Permissions Management.";
            DisplayName          = "Permissions Management Administrator";
            Ensure               = "Present";
            Id                   = "af78dc32-cf4d-46f9-ba4e-4428526346b5";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.permissionsManagement/allEntities/allProperties/allTasks";
            TemplateId           = "af78dc32-cf4d-46f9-ba4e-4428526346b5";
            Version              = "1";
        }
        AADRoleDefinition 61a8ebb7-b84d-46d7-b2ed-25f3329976f3
        {
            Credential           = $Credscredential;
            Description          = "Write, publish, manage, and review the organizational messages for end-users through Microsoft product surfaces.";
            DisplayName          = "Organizational Messages Writer";
            Ensure               = "Present";
            Id                   = "507f53e4-4e52-4077-abd3-d2e1558b6ea2";
            IsEnabled            = $True;
            Managedidentity      = $False;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.usageReports/allEntities/standard/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "507f53e4-4e52-4077-abd3-d2e1558b6ea2";
            Version              = "1";
        }
        AADTenantDetails 07d10681-8e90-4ece-b3ad-cdbb67c12bf7
        {
            Credential                           = $Credscredential;
            IsSingleInstance                     = "Yes";
            Managedidentity                      = $False;
            MarketingNotificationEmails          = @();
            SecurityComplianceNotificationMails  = @();
            SecurityComplianceNotificationPhones = @();
            TechnicalNotificationMails           = @("Stephen.coney@options-it.com");
        }
        EXOAcceptedDomain a3ac7713-4fe4-4e02-8148-a8918d080211
        {
            Credential           = $Credscredential;
            DomainType           = "Authoritative";
            Ensure               = "Present";
            Identity             = "oitechdev.com";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAcceptedDomain 4bb5be18-1f54-473c-904b-455956c9dbae
        {
            Credential           = $Credscredential;
            DomainType           = "Authoritative";
            Ensure               = "Present";
            Identity             = "optionstechnologydev.mail.onmicrosoft.com";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAcceptedDomain 11ff206b-74d5-45a0-a792-dce72eea3475
        {
            Credential           = $Credscredential;
            DomainType           = "Authoritative";
            Ensure               = "Present";
            Identity             = "$OrganizationName";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAntiPhishPolicy 285ace4b-4369-43a9-8435-36d89cd6cae3
        {
            AdminDisplayName                              = "";
            AuthenticationFailAction                      = "MoveToJmf";
            Credential                                    = $Credscredential;
            Enabled                                       = $True;
            EnableFirstContactSafetyTips                  = $False;
            EnableMailboxIntelligence                     = $True;
            EnableMailboxIntelligenceProtection           = $False;
            EnableOrganizationDomainsProtection           = $False;
            EnableSimilarDomainsSafetyTips                = $False;
            EnableSimilarUsersSafetyTips                  = $False;
            EnableSpoofIntelligence                       = $True;
            EnableTargetedDomainsProtection               = $False;
            EnableTargetedUserProtection                  = $False;
            EnableUnauthenticatedSender                   = $True;
            EnableUnusualCharactersSafetyTips             = $False;
            EnableViaTag                                  = $True;
            Ensure                                        = "Present";
            ExcludedDomains                               = @();
            ExcludedSenders                               = @();
            Identity                                      = "Office365 AntiPhish Default_80df2de9e5504a5cbecb1260ca35ce28";
            ImpersonationProtectionState                  = "Automatic";
            MailboxIntelligenceProtectionAction           = "NoAction";
            MailboxIntelligenceProtectionActionRecipients = @();
            MakeDefault                                   = $True;
            PhishThresholdLevel                           = 1;
            TargetedDomainActionRecipients                = @();
            TargetedDomainsToProtect                      = @();
            TargetedUserActionRecipients                  = @();
            TargetedUserProtectionAction                  = "NoAction";
            TargetedUsersToProtect                        = @();
        }
        EXOAtpPolicyForO365 32c2d67c-9da2-4726-8889-9a910359adcf
        {
            AllowSafeDocsOpen       = $False;
            BlockUrls               = @();
            Credential              = $Credscredential;
            EnableATPForSPOTeamsODB = $True;
            EnableSafeDocs          = $True;
            Ensure                  = "Present";
            Identity                = "Default";
            IsSingleInstance        = "Yes";
        }
        EXOCASMailboxPlan 52817f57-a47a-4c84-a926-0d8cee537f41
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnlineEnterprise";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan 7ea85732-bb13-447a-a8e6-f804aae11067
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnlineDeskless";
            ImapEnabled          = $False;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan 1539eea6-d93f-4922-9f41-49bf3ad929de
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnline";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan 86ba9bfa-3556-44e2-84e7-8feed71a790e
        {
            ActiveSyncEnabled    = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "ExchangeOnlineEssentials";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOEmailAddressPolicy 45fcc5f9-16ec-44d1-a990-8fdc46a8763a
        {
            Credential                        = $Credscredential;
            EnabledEmailAddressTemplates      = @("SMTP:@$OrganizationName");
            EnabledPrimarySMTPAddressTemplate = "@$OrganizationName";
            Ensure                            = "Present";
            ManagedByFilter                   = "";
            Name                              = "Default Policy";
            Priority                          = "Lowest";
        }
        EXOHostedConnectionFilterPolicy e0cc6129-3bcb-4673-8f11-3c422152ad22
        {
            AdminDisplayName     = "";
            Credential           = $Credscredential;
            EnableSafeList       = $False;
            Ensure               = "Present";
            Identity             = "Default";
            IPAllowList          = @();
            IPBlockList          = @();
            MakeDefault          = $False;
        }
        EXOHostedContentFilterPolicy d290b307-b4fa-49d9-acea-9dce30105d2d
        {
            AddXHeaderValue                      = "";
            AdminDisplayName                     = "";
            BulkSpamAction                       = "MoveToJmf";
            BulkThreshold                        = 7;
            Credential                           = $Credscredential;
            DownloadLink                         = $False;
            EnableEndUserSpamNotifications       = $False;
            EnableLanguageBlockList              = $False;
            EnableRegionBlockList                = $False;
            EndUserSpamNotificationCustomSubject = "";
            EndUserSpamNotificationFrequency     = 3;
            EndUserSpamNotificationLanguage      = "Default";
            Ensure                               = "Present";
            HighConfidencePhishAction            = "Quarantine";
            HighConfidenceSpamAction             = "MoveToJmf";
            Identity                             = "Default";
            IncreaseScoreWithBizOrInfoUrls       = "Off";
            IncreaseScoreWithImageLinks          = "Off";
            IncreaseScoreWithNumericIps          = "Off";
            IncreaseScoreWithRedirectToOtherPort = "Off";
            InlineSafetyTipsEnabled              = $True;
            LanguageBlockList                    = @();
            MakeDefault                          = $True;
            MarkAsSpamBulkMail                   = "On";
            MarkAsSpamEmbedTagsInHtml            = "Off";
            MarkAsSpamEmptyMessages              = "Off";
            MarkAsSpamFormTagsInHtml             = "Off";
            MarkAsSpamFramesInHtml               = "Off";
            MarkAsSpamFromAddressAuthFail        = "Off";
            MarkAsSpamJavaScriptInHtml           = "Off";
            MarkAsSpamNdrBackscatter             = "Off";
            MarkAsSpamObjectTagsInHtml           = "Off";
            MarkAsSpamSensitiveWordList          = "Off";
            MarkAsSpamSpfRecordHardFail          = "Off";
            MarkAsSpamWebBugsInHtml              = "Off";
            ModifySubjectValue                   = "";
            PhishSpamAction                      = "MoveToJmf";
            PhishZapEnabled                      = $True;
            QuarantineRetentionPeriod            = 15;
            RedirectToRecipients                 = @();
            RegionBlockList                      = @();
            SpamAction                           = "MoveToJmf";
            SpamZapEnabled                       = $True;
            TestModeAction                       = "None";
            TestModeBccToRecipients              = @();
        }
        EXOHostedOutboundSpamFilterPolicy b4b0d6d9-0685-4f3a-9f1f-0d4ad66c7958
        {
            ActionWhenThresholdReached                = "BlockUserForToday";
            AdminDisplayName                          = "";
            AutoForwardingMode                        = "Automatic";
            BccSuspiciousOutboundAdditionalRecipients = @();
            BccSuspiciousOutboundMail                 = $False;
            Credential                                = $Credscredential;
            Ensure                                    = "Present";
            Identity                                  = "Default";
            NotifyOutboundSpam                        = $False;
            NotifyOutboundSpamRecipients              = @();
            RecipientLimitExternalPerHour             = 0;
            RecipientLimitInternalPerHour             = 0;
            RecipientLimitPerDay                      = 0;
        }
        EXOMailTips ed1a1eff-9a50-4d33-96b5-d1bed47d3370
        {
            Credential                            = $Credscredential;
            Ensure                                = "Present";
            MailTipsAllTipsEnabled                = $True;
            MailTipsExternalRecipientsTipsEnabled = $False;
            MailTipsGroupMetricsEnabled           = $True;
            MailTipsLargeAudienceThreshold        = 25;
            MailTipsMailboxSourcedTipsEnabled     = $True;
            Organization                          = "$OrganizationName";
        }
        EXOMalwareFilterPolicy bf11efc0-f4c6-4f95-a5ec-d520980fcba2
        {
            Credential                             = $Credscredential;
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableFileFilter                       = $False;
            EnableInternalSenderAdminNotifications = $False;
            Ensure                                 = "Present";
            FileTypeAction                         = "Quarantine";
            FileTypes                              = @("ace","ani","apk","app","appx","arj","bat","cab","cmd","com","deb","dex","dll","docm","elf","exe","hta","img","iso","jar","jnlp","kext","lha","lib","library","lnk","lzh","macho","msc","msi","msix","msp","mst","pif","ppa","ppam","reg","rev","scf","scr","sct","sys","uif","vb","vbe","vbs","vxd","wsc","wsf","wsh","xll","xz","z");
            Identity                               = "Default";
            MakeDefault                            = $True;
            QuarantineTag                          = "AdminOnlyAccessPolicy";
            ZapEnabled                             = $True;
        }
        EXOMobileDeviceMailboxPolicy f72f63c5-3ee0-4bf3-8863-afd7f55d93d9
        {
            AllowApplePushNotifications              = $True;
            AllowBluetooth                           = "Allow";
            AllowBrowser                             = $True;
            AllowCamera                              = $True;
            AllowConsumerEmail                       = $True;
            AllowDesktopSync                         = $True;
            AllowExternalDeviceManagement            = $False;
            AllowGooglePushNotifications             = $True;
            AllowHTMLEmail                           = $True;
            AllowInternetSharing                     = $True;
            AllowIrDA                                = $True;
            AllowMicrosoftPushNotifications          = $True;
            AllowMobileOTAUpdate                     = $True;
            AllowNonProvisionableDevices             = $True;
            AllowPOPIMAPEmail                        = $True;
            AllowRemoteDesktop                       = $True;
            AllowSimplePassword                      = $True;
            AllowSMIMEEncryptionAlgorithmNegotiation = "AllowAnyAlgorithmNegotiation";
            AllowSMIMESoftCerts                      = $True;
            AllowStorageCard                         = $True;
            AllowTextMessaging                       = $True;
            AllowUnsignedApplications                = $True;
            AllowUnsignedInstallationPackages        = $True;
            AllowWiFi                                = $True;
            AlphanumericPasswordRequired             = $False;
            ApprovedApplicationList                  = @();
            AttachmentsEnabled                       = $True;
            Credential                               = $Credscredential;
            DeviceEncryptionEnabled                  = $False;
            DevicePolicyRefreshInterval              = "Unlimited";
            Ensure                                   = "Present";
            IrmEnabled                               = $True;
            IsDefault                                = $True;
            MaxAttachmentSize                        = "Unlimited";
            MaxCalendarAgeFilter                     = "All";
            MaxEmailAgeFilter                        = "All";
            MaxEmailBodyTruncationSize               = "Unlimited";
            MaxEmailHTMLBodyTruncationSize           = "Unlimited";
            MaxInactivityTimeLock                    = "Unlimited";
            MaxPasswordFailedAttempts                = "Unlimited";
            MinPasswordComplexCharacters             = 1;
            Name                                     = "Default";
            PasswordEnabled                          = $False;
            PasswordExpiration                       = "Unlimited";
            PasswordHistory                          = 0;
            PasswordRecoveryEnabled                  = $False;
            RequireDeviceEncryption                  = $False;
            RequireEncryptedSMIMEMessages            = $False;
            RequireEncryptionSMIMEAlgorithm          = "TripleDES";
            RequireManualSyncWhenRoaming             = $False;
            RequireSignedSMIMEAlgorithm              = "SHA1";
            RequireSignedSMIMEMessages               = $False;
            RequireStorageCardEncryption             = $False;
            UnapprovedInROMApplicationList           = @();
            UNCAccessEnabled                         = $True;
            WSSAccessEnabled                         = $True;
        }
        EXOOrganizationConfig 469bcd3c-6e47-41fe-9f3f-887b608c610f
        {
            ActivityBasedAuthenticationTimeoutEnabled                 = $True;
            ActivityBasedAuthenticationTimeoutInterval                = "06:00:00";
            ActivityBasedAuthenticationTimeoutWithSingleSignOnEnabled = $True;
            AppsForOfficeEnabled                                      = $True;
            AsyncSendEnabled                                          = $True;
            AuditDisabled                                             = $False;
            AutoExpandingArchive                                      = $False;
            BookingsEnabled                                           = $True;
            BookingsPaymentsEnabled                                   = $False;
            BookingsSocialSharingRestricted                           = $False;
            ByteEncoderTypeFor7BitCharsets                            = 0;
            ConnectorsActionableMessagesEnabled                       = $True;
            ConnectorsEnabled                                         = $True;
            ConnectorsEnabledForOutlook                               = $True;
            ConnectorsEnabledForSharepoint                            = $True;
            ConnectorsEnabledForTeams                                 = $True;
            ConnectorsEnabledForYammer                                = $True;
            Credential                                                = $Credscredential;
            CustomerLockboxEnabled                                    = $False;
            DefaultGroupAccessType                                    = "Private";
            DefaultPublicFolderDeletedItemRetention                   = "30.00:00:00";
            DefaultPublicFolderIssueWarningQuota                      = "1.7 GB (1,825,361,920 bytes)";
            DefaultPublicFolderMaxItemSize                            = "Unlimited";
            DefaultPublicFolderMovedItemRetention                     = "7.00:00:00";
            DefaultPublicFolderProhibitPostQuota                      = "2 GB (2,147,483,648 bytes)";
            DirectReportsGroupAutoCreationEnabled                     = $False;
            DisablePlusAddressInRecipients                            = $False;
            DistributionGroupNameBlockedWordsList                     = @();
            DistributionGroupNamingPolicy                             = "";
            ElcProcessingDisabled                                     = $False;
            EndUserDLUpgradeFlowsDisabled                             = $False;
            ExchangeNotificationEnabled                               = $True;
            ExchangeNotificationRecipients                            = @();
            IPListBlocked                                             = @();
            IsSingleInstance                                          = "Yes";
            LeanPopoutEnabled                                         = $False;
            LinkPreviewEnabled                                        = $True;
            MailTipsAllTipsEnabled                                    = $True;
            MailTipsExternalRecipientsTipsEnabled                     = $False;
            MailTipsGroupMetricsEnabled                               = $True;
            MailTipsLargeAudienceThreshold                            = 25;
            MailTipsMailboxSourcedTipsEnabled                         = $True;
            MessageRemindersEnabled                                   = $True;
            MobileAppEducationEnabled                                 = $True;
            OAuth2ClientProfileEnabled                                = $True;
            OutlookGifPickerDisabled                                  = $False;
            OutlookMobileGCCRestrictionsEnabled                       = $False;
            OutlookPayEnabled                                         = $True;
            PublicComputersDetectionEnabled                           = $False;
            PublicFoldersEnabled                                      = "Local";
            PublicFolderShowClientControl                             = $False;
            ReadTrackingEnabled                                       = $False;
            RemotePublicFolderMailboxes                               = @();
            SendFromAliasEnabled                                      = $False;
            SmtpActionableMessagesEnabled                             = $True;
            VisibleMeetingUpdateProperties                            = "Location,AllProperties:15";
            WebPushNotificationsDisabled                              = $False;
            WebSuggestedRepliesDisabled                               = $False;
        }
        EXOOwaMailboxPolicy c72bf473-7a77-4f6c-a169-bd882c6b8d30
        {
            ActionForUnknownFileAndMIMETypes                     = "Allow";
            ActiveSyncIntegrationEnabled                         = $True;
            AdditionalStorageProvidersAvailable                  = $True;
            AllAddressListsEnabled                               = $True;
            AllowCopyContactsToDeviceAddressBook                 = $True;
            AllowedFileTypes                                     = @(".rpmsg",".xlsx",".xlsm",".xlsb",".vstx",".vstm",".vssx",".vssm",".vsdx",".vsdm",".tiff",".pptx",".pptm",".ppsx",".ppsm",".docx",".docm",".zip",".xls",".wmv",".wma",".wav",".vtx",".vsx",".vst",".vss",".vsd",".vdx",".txt",".tif",".rtf",".pub",".ppt",".png",".pdf",".one",".mp3",".jpg",".gif",".doc",".csv",".bmp",".avi");
            AllowedMimeTypes                                     = @("image/jpeg","image/png","image/gif","image/bmp");
            BlockedFileTypes                                     = @(".settingcontent-ms",".printerexport",".appcontent-ms",".application",".appref-ms",".vsmacros",".website",".msh2xml",".msh1xml",".diagcab",".webpnp",".ps2xml",".ps1xml",".mshxml",".gadget",".theme",".psdm1",".mhtml",".cdxml",".xbap",".vhdx",".pyzw",".pssc",".psd1",".psc2",".psc1",".msh2",".msh1",".jnlp",".aspx",".appx",".xnk",".xll",".wsh",".wsf",".wsc",".wsb",".vsw",".vhd",".vbs",".vbp",".vbe",".url",".udl",".tmp",".shs",".shb",".sct",".scr",".scf",".reg",".pyz",".pyw",".pyo",".pyc",".pst",".ps2",".ps1",".prg",".prf",".plg",".pif",".pcd",".osd",".ops",".msu",".mst",".msp",".msi",".msh",".msc",".mht",".mdz",".mdw",".mdt",".mde",".mdb",".mda",".mcf",".maw",".mav",".mau",".mat",".mas",".mar",".maq",".mam",".mag",".maf",".mad",".lnk",".ksh",".jse",".jar",".its",".isp",".iso",".ins",".inf",".img",".htc",".hta",".hpj",".hlp",".grp",".fxp",".exe",".der",".csh",".crt",".cpl",".com",".cnt",".cmd",".chm",".cer",".cab",".bgi",".bat",".bas",".asx",".asp",".app",".apk",".adp",".ade",".ws",".vb",".py",".pl",".js");
            BlockedMimeTypes                                     = @("application/x-javascript","application/javascript","application/msaccess","x-internet-signup","text/javascript","application/prg","application/hta","text/scriplet");
            ClassicAttachmentsEnabled                            = $True;
            ConditionalAccessPolicy                              = "Off";
            Credential                                           = $Credscredential;
            DefaultTheme                                         = "";
            DirectFileAccessOnPrivateComputersEnabled            = $True;
            DirectFileAccessOnPublicComputersEnabled             = $True;
            DisplayPhotosEnabled                                 = $True;
            Ensure                                               = "Present";
            ExplicitLogonEnabled                                 = $True;
            ExternalImageProxyEnabled                            = $True;
            ForceSaveAttachmentFilteringEnabled                  = $False;
            ForceSaveFileTypes                                   = @(".svgz",".html",".xml",".swf",".svg",".spl",".htm",".dir",".dcr");
            ForceSaveMimeTypes                                   = @("Application/x-shockwave-flash","Application/octet-stream","Application/futuresplash","Application/x-director","application/xml","image/svg+xml","text/html","text/xml");
            ForceWacViewingFirstOnPrivateComputers               = $False;
            ForceWacViewingFirstOnPublicComputers                = $False;
            FreCardsEnabled                                      = $True;
            GlobalAddressListEnabled                             = $True;
            GroupCreationEnabled                                 = $True;
            InstantMessagingEnabled                              = $True;
            InstantMessagingType                                 = "Ocs";
            InterestingCalendarsEnabled                          = $True;
            IRMEnabled                                           = $True;
            IsDefault                                            = $True;
            JournalEnabled                                       = $True;
            LocalEventsEnabled                                   = $False;
            LogonAndErrorLanguage                                = 0;
            Name                                                 = "OwaMailboxPolicy-Default";
            NotesEnabled                                         = $True;
            NpsSurveysEnabled                                    = $True;
            OnSendAddinsEnabled                                  = $False;
            OrganizationEnabled                                  = $True;
            OutboundCharset                                      = "AutoDetect";
            OutlookBetaToggleEnabled                             = $True;
            OWALightEnabled                                      = $True;
            PersonalAccountCalendarsEnabled                      = $True;
            PhoneticSupportEnabled                               = $False;
            PlacesEnabled                                        = $True;
            PremiumClientEnabled                                 = $True;
            PrintWithoutDownloadEnabled                          = $True;
            PublicFoldersEnabled                                 = $True;
            RecoverDeletedItemsEnabled                           = $True;
            ReferenceAttachmentsEnabled                          = $True;
            RemindersAndNotificationsEnabled                     = $True;
            ReportJunkEmailEnabled                               = $True;
            RulesEnabled                                         = $True;
            SatisfactionEnabled                                  = $True;
            SaveAttachmentsToCloudEnabled                        = $True;
            SearchFoldersEnabled                                 = $True;
            SetPhotoEnabled                                      = $True;
            SetPhotoURL                                          = "";
            SignaturesEnabled                                    = $True;
            SkipCreateUnifiedGroupCustomSharepointClassification = $True;
            TeamSnapCalendarsEnabled                             = $True;
            TextMessagingEnabled                                 = $True;
            ThemeSelectionEnabled                                = $True;
            UMIntegrationEnabled                                 = $True;
            UseGB18030                                           = $False;
            UseISO885915                                         = $False;
            UserVoiceEnabled                                     = $True;
            WacEditingEnabled                                    = $True;
            WacExternalServicesEnabled                           = $True;
            WacOMEXEnabled                                       = $False;
            WacViewingOnPrivateComputersEnabled                  = $True;
            WacViewingOnPublicComputersEnabled                   = $True;
            WeatherEnabled                                       = $True;
            WebPartsFrameOptionsType                             = "SameOrigin";
        }
        EXORemoteDomain e5f18ee9-6ec3-4c4e-a8f6-870c3e88bb37
        {
            AllowedOOFType                       = "External";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "iso-8859-1";
            ContentType                          = "MimeHtmlText";
            Credential                           = $Credscredential;
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "*";
            Ensure                               = "Present";
            Identity                             = "Default";
            IsInternal                           = $False;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "Default";
            NonMimeCharacterSet                  = "iso-8859-1";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORoleAssignmentPolicy 90c041ae-a371-4f21-bceb-06ab2f683406
        {
            Credential           = $Credscredential;
            Description          = "This policy grants end users the permission to set their options in Outlook on the web and perform other self-administration tasks.";
            Ensure               = "Present";
            IsDefault            = $True;
            Name                 = "Default Role Assignment Policy";
            Roles                = @("MyBaseOptions","MyTextMessaging","MyProfileInformation","MyDistributionGroupMembership","My Marketplace Apps","MyContactInformation","My Custom Apps","MyVoiceMail","MyRetentionPolicies","MyDistributionGroups","My ReadWriteMailbox Apps","MyMailSubscriptions");
        }
        EXOSafeAttachmentPolicy 53b5abbd-e97e-4256-8e76-855b93219672
        {
            Action               = "Block";
            ActionOnError        = $True;
            AdminDisplayName     = "";
            Credential           = $Credscredential;
            Enable               = $True;
            Ensure               = "Present";
            Identity             = "Built-In Protection Policy";
            Redirect             = $False;
            RedirectAddress      = "";
        }
        EXOSafeLinksPolicy 3ddc525d-c1e0-4a7b-b7b6-b70b39dbc7a4
        {
            AdminDisplayName           = "";
            Credential                 = $Credscredential;
            CustomNotificationText     = "";
            DeliverMessageAfterScan    = $True;
            DisableUrlRewrite          = $True;
            DoNotRewriteUrls           = @();
            EnableForInternalSenders   = $False;
            EnableOrganizationBranding = $False;
            EnableSafeLinksForEmail    = $True;
            EnableSafeLinksForTeams    = $True;
            Ensure                     = "Present";
            Identity                   = "Built-In Protection Policy";
            ScanUrls                   = $True;
        }
        EXOSharingPolicy 8c220cb8-4b03-4d13-844d-1d266ad09136
        {
            Credential           = $Credscredential;
            Default              = $True;
            Domains              = @("Anonymous:CalendarSharingFreeBusyReviewer","*:CalendarSharingFreeBusySimple");
            Enabled              = $True;
            Ensure               = "Present";
            Name                 = "Default Sharing Policy";
        }
        IntuneAppProtectionPolicyiOS 5c68177b-ec96-43d5-9ed0-ffa381138275
        {
            AllowedDataStorageLocations             = @();
            AllowedInboundDataTransferSources       = "allApps";
            AllowedOutboundClipboardSharingLevel    = "managedAppsWithPasteIn";
            AllowedOutboundDataTransferDestinations = "managedApps";
            AppDataEncryptionType                   = "whenDeviceLocked";
            Apps                                    = @("com.adobe.adobe-reader","com.microsoft.bing.halseyassistant","com.microsoft.dynamics","com.microsoft.dynamics.iphone.moca","com.microsoft.msapps","com.microsoft.msedge","com.microsoft.o365shdmobileapp","com.microsoft.office.excel","com.microsoft.office.outlook","com.microsoft.office.powerpoint","com.microsoft.office.word","com.microsoft.office365booker","com.microsoft.officemobile","com.microsoft.onenote","com.microsoft.plannermobile","com.microsoft.powerbimobile","com.microsoft.procsimo","com.microsoft.ramobile","com.microsoft.sharepoint","com.microsoft.skydrive","com.microsoft.skype.teams","com.microsoft.splists","com.microsoft.stream","com.microsoft.to-do","com.microsoft.whiteboard","us.zoom.videomeetings4intune");
            Assignments                             = @();
            ContactSyncBlocked                      = $False;
            Credential                              = $Credscredential;
            CustomBrowserProtocol                   = "";
            DataBackupBlocked                       = $True;
            Description                             = "";
            DeviceComplianceRequired                = $True;
            DisableAppPinIfDevicePinIsSet           = $False;
            DisplayName                             = "Default iOS App Protection Policy";
            Ensure                                  = "Present";
            ExcludedGroups                          = @();
            FaceIdBlocked                           = $False;
            FingerprintBlocked                      = $False;
            ManagedBrowser                          = "microsoftEdge";
            ManagedBrowserToOpenLinksRequired       = $True;
            Managedidentity                         = $False;
            MaximumPinRetries                       = 10;
            MinimumPinLength                        = 6;
            OrganizationalCredentialsRequired       = $False;
            PeriodBeforePinReset                    = "PT0S";
            PeriodOfflineBeforeAccessCheck          = "PT12H";
            PeriodOfflineBeforeWipeIsEnforced       = "P90D";
            PeriodOnlineBeforeAccessCheck           = "PT30M";
            PinCharacterSet                         = "numeric";
            PinRequired                             = $True;
            PrintBlocked                            = $True;
            SaveAsBlocked                           = $True;
            SimplePinBlocked                        = $True;
        }
        IntuneDeviceCompliancePolicyAndroidWorkProfile 46e94d42-0cbc-4a3e-950e-1af2fbd46c98
        {
            Credential                                         = $Credscredential;
            DeviceThreatProtectionEnabled                      = $False;
            DeviceThreatProtectionRequiredSecurityLevel        = "unavailable";
            DisplayName                                        = "Default Android Compliance Policy";
            Ensure                                             = "Present";
            Managedidentity                                    = $False;
            PasswordMinimumLength                              = 6;
            PasswordMinutesOfInactivityBeforeLock              = 15;
            PasswordPreviousPasswordBlockCount                 = 5;
            PasswordRequired                                   = $True;
            PasswordRequiredType                               = "numeric";
            SecurityBlockJailbrokenDevices                     = $True;
            SecurityDisableUsbDebugging                        = $False;
            SecurityPreventInstallAppsFromUnknownSources       = $False;
            SecurityRequireCompanyPortalAppIntegrity           = $False;
            SecurityRequireGooglePlayServices                  = $False;
            SecurityRequireSafetyNetAttestationBasicIntegrity  = $False;
            SecurityRequireSafetyNetAttestationCertifiedDevice = $False;
            SecurityRequireUpToDateSecurityProviders           = $False;
            SecurityRequireVerifyApps                          = $False;
            StorageRequireEncryption                           = $False;
        }
        IntuneDeviceCompliancePolicyiOs cf5092ec-8a27-4311-8108-cfa16ac51745
        {
            Credential                                  = $Credscredential;
            DeviceThreatProtectionEnabled               = $False;
            DeviceThreatProtectionRequiredSecurityLevel = "unavailable";
            DisplayName                                 = "Default iOS Compliance Policy";
            Ensure                                      = "Present";
            ManagedEmailProfileRequired                 = $False;
            Managedidentity                             = $False;
            PasscodeBlockSimple                         = $True;
            PasscodeMinimumLength                       = 6;
            PasscodeMinutesOfInactivityBeforeLock       = 0;
            PasscodePreviousPasscodeBlockCount          = 5;
            PasscodeRequired                            = $True;
            PasscodeRequiredType                        = "numeric";
            SecurityBlockJailbrokenDevices              = $True;
        }
        IntuneDeviceCompliancePolicyMacOS b9532d62-a673-46c6-bd44-8ecea0ba359e
        {
            Credential                                  = $Credscredential;
            DeviceThreatProtectionEnabled               = $False;
            DeviceThreatProtectionRequiredSecurityLevel = "unavailable";
            DisplayName                                 = "Default Apple Mac Compliance Policy";
            Ensure                                      = "Present";
            FirewallBlockAllIncoming                    = $False;
            FirewallEnabled                             = $True;
            FirewallEnableStealthMode                   = $False;
            Managedidentity                             = $False;
            OsMinimumVersion                            = "12.3.1";
            PasswordBlockSimple                         = $False;
            PasswordRequired                            = $False;
            PasswordRequiredType                        = "deviceDefault";
            StorageRequireEncryption                    = $True;
            SystemIntegrityProtectionEnabled            = $True;
        }
        IntuneDeviceCompliancePolicyWindows10 9457109f-addd-4444-b062-4b925f99bbe9
        {
            ActiveFirewallRequired                      = $False;
            AntiSpywareRequired                         = $False;
            AntivirusRequired                           = $False;
            Assignments                                 = @(
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    dataType = '#microsoft.graph.groupAssignmentTarget'
                    groupId = '312c0943-5a68-423d-9bf4-40d9956f7b46'
                }
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    dataType = '#microsoft.graph.groupAssignmentTarget'
                    groupId = '5e6d8f95-b1f9-4a28-b872-ef8c43e4493b'
                }
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    dataType = '#microsoft.graph.groupAssignmentTarget'
                    groupId = '784539a2-4ee2-4084-9912-01e32a3314fe'
                });
            BitLockerEnabled                            = $True;
            CodeIntegrityEnabled                        = $False;
            ConfigurationManagerComplianceRequired      = $False;
            Credential                                  = $Credscredential;
            DefenderEnabled                             = $False;
            DeviceThreatProtectionEnabled               = $False;
            DeviceThreatProtectionRequiredSecurityLevel = "unavailable";
            DisplayName                                 = "Default Windows Compliance Policy";
            EarlyLaunchAntiMalwareDriverEnabled         = $False;
            Ensure                                      = "Present";
            Managedidentity                             = $False;
            OsMinimumVersion                            = "10.0.18363.720";
            PasswordBlockSimple                         = $False;
            PasswordRequired                            = $False;
            PasswordRequiredToUnlockFromIdle            = $False;
            PasswordRequiredType                        = "deviceDefault";
            RequireHealthyDeviceReport                  = $False;
            RTPEnabled                                  = $False;
            SecureBootEnabled                           = $True;
            SignatureOutOfDate                          = $False;
            StorageRequireEncryption                    = $False;
            ValidOperatingSystemBuildRanges             = @();
        }
        IntuneDeviceConfigurationPolicyiOS 601deb78-746a-4120-a61d-04f4d66b90d0
        {
            AccountBlockModification                       = $False;
            ActivationLockAllowWhenSupervised              = $False;
            AirDropBlocked                                 = $False;
            AirDropForceUnmanagedDropTarget                = $False;
            AirPlayForcePairingPasswordForOutgoingRequests = $False;
            AppleNewsBlocked                               = $False;
            AppleWatchBlockPairing                         = $False;
            AppleWatchForceWristDetection                  = $False;
            AppStoreBlockAutomaticDownloads                = $False;
            AppStoreBlocked                                = $False;
            AppStoreBlockInAppPurchases                    = $False;
            AppStoreBlockUIAppInstallation                 = $False;
            AppStoreRequirePassword                        = $False;
            AppsVisibilityList                             = @();
            AppsVisibilityListType                         = "none";
            BluetoothBlockModification                     = $False;
            CameraBlocked                                  = $False;
            CellularBlockDataRoaming                       = $False;
            CellularBlockGlobalBackgroundFetchWhileRoaming = $False;
            CellularBlockPerAppDataModification            = $False;
            CellularBlockVoiceRoaming                      = $False;
            CertificatesBlockUntrustedTlsCertificates      = $False;
            ClassroomAppBlockRemoteScreenObservation       = $False;
            CompliantAppListType                           = "none";
            CompliantAppsList                              = @();
            ConfigurationProfileBlockChanges               = $False;
            Credential                                     = $Credscredential;
            DefinitionLookupBlocked                        = $False;
            DeviceBlockEnableRestrictions                  = $False;
            DeviceBlockEraseContentAndSettings             = $False;
            DeviceBlockNameModification                    = $False;
            DiagnosticDataBlockSubmission                  = $False;
            DiagnosticDataBlockSubmissionModification      = $False;
            DisplayName                                    = "Default iOS Configuration Policy";
            DocumentsBlockManagedDocumentsInUnmanagedApps  = $False;
            DocumentsBlockUnmanagedDocumentsInManagedApps  = $False;
            EmailInDomainSuffixes                          = @();
            Ensure                                         = "Present";
            EnterpriseAppBlockTrust                        = $False;
            EnterpriseAppBlockTrustModification            = $False;
            FaceTimeBlocked                                = $False;
            FindMyFriendsBlocked                           = $False;
            GameCenterBlocked                              = $False;
            GamingBlockGameCenterFriends                   = $False;
            GamingBlockMultiplayer                         = $False;
            HostPairingBlocked                             = $False;
            iBooksStoreBlocked                             = $False;
            iBooksStoreBlockErotica                        = $False;
            iCloudBlockActivityContinuation                = $False;
            iCloudBlockBackup                              = $False;
            iCloudBlockDocumentSync                        = $False;
            iCloudBlockManagedAppsSync                     = $False;
            iCloudBlockPhotoLibrary                        = $False;
            iCloudBlockPhotoStreamSync                     = $False;
            iCloudBlockSharedPhotoStream                   = $False;
            iCloudRequireEncryptedBackup                   = $False;
            iTunesBlockExplicitContent                     = $False;
            iTunesBlockMusicService                        = $False;
            iTunesBlockRadio                               = $False;
            KeyboardBlockAutoCorrect                       = $False;
            KeyboardBlockPredictive                        = $False;
            KeyboardBlockShortcuts                         = $False;
            KeyboardBlockSpellCheck                        = $False;
            KioskModeAllowAssistiveSpeak                   = $False;
            KioskModeAllowAssistiveTouchSettings           = $False;
            KioskModeAllowAutoLock                         = $False;
            KioskModeAllowColorInversionSettings           = $False;
            KioskModeAllowRingerSwitch                     = $False;
            KioskModeAllowScreenRotation                   = $False;
            KioskModeAllowSleepButton                      = $False;
            KioskModeAllowTouchscreen                      = $False;
            KioskModeAllowVoiceOverSettings                = $False;
            KioskModeAllowVolumeButtons                    = $False;
            KioskModeAllowZoomSettings                     = $False;
            KioskModeRequireAssistiveTouch                 = $False;
            KioskModeRequireColorInversion                 = $False;
            KioskModeRequireMonoAudio                      = $False;
            KioskModeRequireVoiceOver                      = $False;
            KioskModeRequireZoom                           = $False;
            LockScreenBlockControlCenter                   = $False;
            LockScreenBlockNotificationView                = $False;
            LockScreenBlockPassbook                        = $False;
            LockScreenBlockTodayView                       = $False;
            Managedidentity                                = $False;
            MediaContentRatingApps                         = "allAllowed";
            MessagesBlocked                                = $False;
            NotificationsBlockSettingsModification         = $False;
            PasscodeBlockFingerprintUnlock                 = $False;
            PasscodeBlockModification                      = $False;
            PasscodeBlockSimple                            = $True;
            PasscodeMinimumLength                          = 6;
            PasscodeMinutesOfInactivityBeforeLock          = 0;
            PasscodeMinutesOfInactivityBeforeScreenTimeout = 15;
            PasscodePreviousPasscodeBlockCount             = 5;
            PasscodeRequired                               = $True;
            PasscodeRequiredType                           = "numeric";
            PodcastsBlocked                                = $False;
            SafariBlockAutofill                            = $False;
            SafariBlocked                                  = $False;
            SafariBlockJavaScript                          = $False;
            SafariBlockPopups                              = $False;
            SafariCookieSettings                           = "browserDefault";
            SafariManagedDomains                           = @();
            SafariPasswordAutoFillDomains                  = @();
            SafariRequireFraudWarning                      = $False;
            ScreenCaptureBlocked                           = $False;
            SiriBlocked                                    = $False;
            SiriBlockedWhenLocked                          = $False;
            SiriBlockUserGeneratedContent                  = $False;
            SiriRequireProfanityFilter                     = $False;
            SpotlightBlockInternetResults                  = $False;
            VoiceDialingBlocked                            = $False;
            WallpaperBlockModification                     = $False;
        }
        IntuneDeviceConfigurationPolicyiOS 694b743c-e5ab-4627-ac50-55c649f206f3
        {
            AccountBlockModification                       = $False;
            ActivationLockAllowWhenSupervised              = $False;
            AirDropBlocked                                 = $False;
            AirDropForceUnmanagedDropTarget                = $False;
            AirPlayForcePairingPasswordForOutgoingRequests = $False;
            AppleNewsBlocked                               = $False;
            AppleWatchBlockPairing                         = $False;
            AppleWatchForceWristDetection                  = $False;
            AppStoreBlockAutomaticDownloads                = $False;
            AppStoreBlocked                                = $False;
            AppStoreBlockInAppPurchases                    = $False;
            AppStoreBlockUIAppInstallation                 = $False;
            AppStoreRequirePassword                        = $False;
            AppsVisibilityList                             = @();
            AppsVisibilityListType                         = "none";
            BluetoothBlockModification                     = $False;
            CameraBlocked                                  = $False;
            CellularBlockDataRoaming                       = $False;
            CellularBlockGlobalBackgroundFetchWhileRoaming = $False;
            CellularBlockPerAppDataModification            = $False;
            CellularBlockVoiceRoaming                      = $False;
            CertificatesBlockUntrustedTlsCertificates      = $False;
            ClassroomAppBlockRemoteScreenObservation       = $False;
            CompliantAppListType                           = "none";
            CompliantAppsList                              = @();
            ConfigurationProfileBlockChanges               = $False;
            Credential                                     = $Credscredential;
            DefinitionLookupBlocked                        = $False;
            DeviceBlockEnableRestrictions                  = $False;
            DeviceBlockEraseContentAndSettings             = $False;
            DeviceBlockNameModification                    = $False;
            DiagnosticDataBlockSubmission                  = $False;
            DiagnosticDataBlockSubmissionModification      = $False;
            DisplayName                                    = "Default iOS Configuration Policy - DevOpsTest";
            DocumentsBlockManagedDocumentsInUnmanagedApps  = $False;
            DocumentsBlockUnmanagedDocumentsInManagedApps  = $False;
            EmailInDomainSuffixes                          = @();
            Ensure                                         = "Present";
            EnterpriseAppBlockTrust                        = $False;
            EnterpriseAppBlockTrustModification            = $False;
            FaceTimeBlocked                                = $False;
            FindMyFriendsBlocked                           = $False;
            GameCenterBlocked                              = $False;
            GamingBlockGameCenterFriends                   = $False;
            GamingBlockMultiplayer                         = $False;
            HostPairingBlocked                             = $False;
            iBooksStoreBlocked                             = $False;
            iBooksStoreBlockErotica                        = $False;
            iCloudBlockActivityContinuation                = $False;
            iCloudBlockBackup                              = $False;
            iCloudBlockDocumentSync                        = $False;
            iCloudBlockManagedAppsSync                     = $False;
            iCloudBlockPhotoLibrary                        = $False;
            iCloudBlockPhotoStreamSync                     = $False;
            iCloudBlockSharedPhotoStream                   = $False;
            iCloudRequireEncryptedBackup                   = $False;
            iTunesBlockExplicitContent                     = $False;
            iTunesBlockMusicService                        = $False;
            iTunesBlockRadio                               = $False;
            KeyboardBlockAutoCorrect                       = $False;
            KeyboardBlockPredictive                        = $False;
            KeyboardBlockShortcuts                         = $False;
            KeyboardBlockSpellCheck                        = $False;
            KioskModeAllowAssistiveSpeak                   = $False;
            KioskModeAllowAssistiveTouchSettings           = $False;
            KioskModeAllowAutoLock                         = $False;
            KioskModeAllowColorInversionSettings           = $False;
            KioskModeAllowRingerSwitch                     = $False;
            KioskModeAllowScreenRotation                   = $False;
            KioskModeAllowSleepButton                      = $False;
            KioskModeAllowTouchscreen                      = $False;
            KioskModeAllowVoiceOverSettings                = $False;
            KioskModeAllowVolumeButtons                    = $False;
            KioskModeAllowZoomSettings                     = $False;
            KioskModeRequireAssistiveTouch                 = $False;
            KioskModeRequireColorInversion                 = $False;
            KioskModeRequireMonoAudio                      = $False;
            KioskModeRequireVoiceOver                      = $False;
            KioskModeRequireZoom                           = $False;
            LockScreenBlockControlCenter                   = $False;
            LockScreenBlockNotificationView                = $False;
            LockScreenBlockPassbook                        = $False;
            LockScreenBlockTodayView                       = $False;
            Managedidentity                                = $False;
            MediaContentRatingApps                         = "allAllowed";
            MessagesBlocked                                = $False;
            NotificationsBlockSettingsModification         = $False;
            PasscodeBlockFingerprintUnlock                 = $False;
            PasscodeBlockModification                      = $False;
            PasscodeBlockSimple                            = $True;
            PasscodeMinimumLength                          = 6;
            PasscodeMinutesOfInactivityBeforeLock          = 0;
            PasscodeMinutesOfInactivityBeforeScreenTimeout = 15;
            PasscodePreviousPasscodeBlockCount             = 5;
            PasscodeRequired                               = $True;
            PasscodeRequiredType                           = "numeric";
            PodcastsBlocked                                = $False;
            SafariBlockAutofill                            = $False;
            SafariBlocked                                  = $False;
            SafariBlockJavaScript                          = $False;
            SafariBlockPopups                              = $False;
            SafariCookieSettings                           = "browserDefault";
            SafariManagedDomains                           = @();
            SafariPasswordAutoFillDomains                  = @();
            SafariRequireFraudWarning                      = $False;
            ScreenCaptureBlocked                           = $False;
            SiriBlocked                                    = $False;
            SiriBlockedWhenLocked                          = $False;
            SiriBlockUserGeneratedContent                  = $False;
            SiriRequireProfanityFilter                     = $False;
            SpotlightBlockInternetResults                  = $False;
            VoiceDialingBlocked                            = $False;
            WallpaperBlockModification                     = $False;
        }
        IntuneDeviceConfigurationPolicyWindows10 7de7ca1c-f02d-4ad6-91c8-a47d7a705d0e
        {
            AccountsBlockAddingNonMicrosoftAccountEmail          = $False;
            AntiTheftModeBlocked                                 = $False;
            AppsAllowTrustedAppsSideloading                      = "notConfigured";
            AppsBlockWindowsStoreOriginatedApps                  = $False;
            BluetoothAllowedServices                             = @();
            BluetoothBlockAdvertising                            = $False;
            BluetoothBlockDiscoverableMode                       = $False;
            BluetoothBlocked                                     = $False;
            BluetoothBlockPrePairing                             = $False;
            CameraBlocked                                        = $False;
            CellularBlockDataWhenRoaming                         = $False;
            CellularBlockVpn                                     = $False;
            CellularBlockVpnWhenRoaming                          = $False;
            CertificatesBlockManualRootCertificateInstallation   = $False;
            ConnectedDevicesServiceBlocked                       = $False;
            CopyPasteBlocked                                     = $False;
            CortanaBlocked                                       = $False;
            Credential                                           = $Credscredential;
            DefenderBlockEndUserAccess                           = $False;
            DefenderCloudBlockLevel                              = "notConfigured";
            DefenderFileExtensionsToExclude                      = @();
            DefenderFilesAndFoldersToExclude                     = @();
            DefenderMonitorFileActivity                          = "userDefined";
            DefenderProcessesToExclude                           = @();
            DefenderPromptForSampleSubmission                    = "userDefined";
            DefenderRequireBehaviorMonitoring                    = $False;
            DefenderRequireCloudProtection                       = $False;
            DefenderRequireNetworkInspectionSystem               = $False;
            DefenderRequireRealTimeMonitoring                    = $False;
            DefenderScanArchiveFiles                             = $False;
            DefenderScanDownloads                                = $False;
            DefenderScanIncomingMail                             = $False;
            DefenderScanMappedNetworkDrivesDuringFullScan        = $False;
            DefenderScanNetworkFiles                             = $False;
            DefenderScanRemovableDrivesDuringFullScan            = $False;
            DefenderScanScriptsLoadedInInternetExplorer          = $False;
            DefenderScanType                                     = "userDefined";
            DefenderSystemScanSchedule                           = "userDefined";
            DeveloperUnlockSetting                               = "notConfigured";
            DeviceManagementBlockFactoryResetOnMobile            = $False;
            DeviceManagementBlockManualUnenroll                  = $False;
            DiagnosticsDataSubmissionMode                        = "userDefined";
            DisplayName                                          = "WIN10/11 - Device Restrictions";
            EdgeAllowStartPagesModification                      = $False;
            EdgeBlockAccessToAboutFlags                          = $False;
            EdgeBlockAddressBarDropdown                          = $False;
            EdgeBlockAutofill                                    = $False;
            EdgeBlockCompatibilityList                           = $False;
            EdgeBlockDeveloperTools                              = $False;
            EdgeBlocked                                          = $False;
            EdgeBlockExtensions                                  = $False;
            EdgeBlockInPrivateBrowsing                           = $False;
            EdgeBlockJavaScript                                  = $False;
            EdgeBlockLiveTileDataCollection                      = $False;
            EdgeBlockPasswordManager                             = $False;
            EdgeBlockPopups                                      = $False;
            EdgeBlockSearchSuggestions                           = $False;
            EdgeBlockSendingDoNotTrackHeader                     = $False;
            EdgeBlockSendingIntranetTrafficToInternetExplorer    = $False;
            EdgeClearBrowsingDataOnExit                          = $False;
            EdgeCookiePolicy                                     = "userDefined";
            EdgeDisableFirstRunPage                              = $False;
            EdgeHomepageUrls                                     = @();
            EdgeRequireSmartScreen                               = $False;
            EdgeSendIntranetTrafficToInternetExplorer            = $False;
            EdgeSyncFavoritesWithInternetExplorer                = $False;
            Ensure                                               = "Present";
            ExperienceBlockDeviceDiscovery                       = $False;
            ExperienceBlockErrorDialogWhenNoSIM                  = $False;
            ExperienceBlockTaskSwitcher                          = $False;
            GameDvrBlocked                                       = $False;
            InternetSharingBlocked                               = $False;
            LocationServicesBlocked                              = $False;
            LockScreenAllowTimeoutConfiguration                  = $False;
            LockScreenBlockActionCenterNotifications             = $False;
            LockScreenBlockCortana                               = $False;
            LockScreenBlockToastNotifications                    = $False;
            LogonBlockFastUserSwitching                          = $False;
            Managedidentity                                      = $False;
            MicrosoftAccountBlocked                              = $False;
            MicrosoftAccountBlockSettingsSync                    = $False;
            NetworkProxyApplySettingsDeviceWide                  = $False;
            NetworkProxyDisableAutoDetect                        = $False;
            NfcBlocked                                           = $False;
            OneDriveDisableFileSync                              = $False;
            PasswordBlockSimple                                  = $False;
            PasswordRequired                                     = $False;
            PasswordRequiredType                                 = "deviceDefault";
            PasswordRequireWhenResumeFromIdleState               = $False;
            PersonalizationDesktopImageUrl                       = "https://i.postimg.cc/SxNQz1pN/Microsoft-Teams-image-1.png";
            PrivacyAdvertisingId                                 = "notConfigured";
            PrivacyAutoAcceptPairingAndConsentPrompts            = $False;
            PrivacyBlockInputPersonalization                     = $False;
            ResetProtectionModeBlocked                           = $False;
            SafeSearchFilter                                     = "userDefined";
            ScreenCaptureBlocked                                 = $False;
            SearchBlockDiacritics                                = $False;
            SearchDisableAutoLanguageDetection                   = $False;
            SearchDisableIndexerBackoff                          = $False;
            SearchDisableIndexingEncryptedItems                  = $False;
            SearchDisableIndexingRemovableDrive                  = $False;
            SearchEnableAutomaticIndexSizeManangement            = $False;
            SearchEnableRemoteQueries                            = $False;
            SettingsBlockAccountsPage                            = $False;
            SettingsBlockAddProvisioningPackage                  = $False;
            SettingsBlockAppsPage                                = $False;
            SettingsBlockChangeLanguage                          = $False;
            SettingsBlockChangePowerSleep                        = $False;
            SettingsBlockChangeRegion                            = $False;
            SettingsBlockChangeSystemTime                        = $False;
            SettingsBlockDevicesPage                             = $False;
            SettingsBlockEaseOfAccessPage                        = $False;
            SettingsBlockEditDeviceName                          = $False;
            SettingsBlockGamingPage                              = $False;
            SettingsBlockNetworkInternetPage                     = $False;
            SettingsBlockPersonalizationPage                     = $False;
            SettingsBlockPrivacyPage                             = $False;
            SettingsBlockRemoveProvisioningPackage               = $False;
            SettingsBlockSettingsApp                             = $False;
            SettingsBlockSystemPage                              = $False;
            SettingsBlockTimeLanguagePage                        = $False;
            SettingsBlockUpdateSecurityPage                      = $False;
            SharedUserAppDataAllowed                             = $False;
            SmartScreenBlockPromptOverride                       = $False;
            SmartScreenBlockPromptOverrideForFiles               = $False;
            SmartScreenEnableAppInstallControl                   = $False;
            StartBlockUnpinningAppsFromTaskbar                   = $False;
            StartMenuAppListVisibility                           = "userDefined";
            StartMenuHideChangeAccountSettings                   = $False;
            StartMenuHideFrequentlyUsedApps                      = $False;
            StartMenuHideHibernate                               = $False;
            StartMenuHideLock                                    = $False;
            StartMenuHidePowerButton                             = $False;
            StartMenuHideRecentJumpLists                         = $False;
            StartMenuHideRecentlyAddedApps                       = $False;
            StartMenuHideRestartOptions                          = $False;
            StartMenuHideShutDown                                = $False;
            StartMenuHideSignOut                                 = $False;
            StartMenuHideSleep                                   = $False;
            StartMenuHideSwitchAccount                           = $False;
            StartMenuHideUserTile                                = $False;
            StartMenuMode                                        = "userDefined";
            StartMenuPinnedFolderDocuments                       = "notConfigured";
            StartMenuPinnedFolderDownloads                       = "notConfigured";
            StartMenuPinnedFolderFileExplorer                    = "notConfigured";
            StartMenuPinnedFolderHomeGroup                       = "notConfigured";
            StartMenuPinnedFolderMusic                           = "notConfigured";
            StartMenuPinnedFolderNetwork                         = "notConfigured";
            StartMenuPinnedFolderPersonalFolder                  = "notConfigured";
            StartMenuPinnedFolderPictures                        = "notConfigured";
            StartMenuPinnedFolderSettings                        = "notConfigured";
            StartMenuPinnedFolderVideos                          = "notConfigured";
            StorageBlockRemovableStorage                         = $False;
            StorageRequireMobileDeviceEncryption                 = $False;
            StorageRestrictAppDataToSystemVolume                 = $False;
            StorageRestrictAppInstallToSystemVolume              = $False;
            TenantLockdownRequireNetworkDuringOutOfBoxExperience = $False;
            UsbBlocked                                           = $False;
            VoiceRecordingBlocked                                = $False;
            WebRtcBlockLocalhostIpAddress                        = $False;
            WiFiBlockAutomaticConnectHotspots                    = $False;
            WiFiBlocked                                          = $False;
            WiFiBlockManualConfiguration                         = $False;
            WindowsSpotlightBlockConsumerSpecificFeatures        = $False;
            WindowsSpotlightBlocked                              = $False;
            WindowsSpotlightBlockOnActionCenter                  = $False;
            WindowsSpotlightBlockTailoredExperiences             = $False;
            WindowsSpotlightBlockThirdPartyNotifications         = $False;
            WindowsSpotlightBlockWelcomeExperience               = $False;
            WindowsSpotlightBlockWindowsTips                     = $False;
            WindowsSpotlightConfigureOnLockScreen                = "notConfigured";
            WindowsStoreBlockAutoUpdate                          = $False;
            WindowsStoreBlocked                                  = $False;
            WindowsStoreEnablePrivateStoreOnly                   = $False;
            WirelessDisplayBlockProjectionToThisDevice           = $False;
            WirelessDisplayBlockUserInputFromReceiver            = $False;
            WirelessDisplayRequirePinForPairing                  = $False;
        }
        IntuneDeviceConfigurationPolicyWindows10 0d5e5f43-5f06-4603-b37c-000785eb10a4
        {
            AccountsBlockAddingNonMicrosoftAccountEmail          = $False;
            AntiTheftModeBlocked                                 = $False;
            AppsAllowTrustedAppsSideloading                      = "notConfigured";
            AppsBlockWindowsStoreOriginatedApps                  = $False;
            BluetoothAllowedServices                             = @();
            BluetoothBlockAdvertising                            = $False;
            BluetoothBlockDiscoverableMode                       = $False;
            BluetoothBlocked                                     = $False;
            BluetoothBlockPrePairing                             = $False;
            CameraBlocked                                        = $False;
            CellularBlockDataWhenRoaming                         = $False;
            CellularBlockVpn                                     = $False;
            CellularBlockVpnWhenRoaming                          = $False;
            CertificatesBlockManualRootCertificateInstallation   = $False;
            ConnectedDevicesServiceBlocked                       = $False;
            CopyPasteBlocked                                     = $False;
            CortanaBlocked                                       = $False;
            Credential                                           = $Credscredential;
            DefenderBlockEndUserAccess                           = $False;
            DefenderCloudBlockLevel                              = "notConfigured";
            DefenderFileExtensionsToExclude                      = @();
            DefenderFilesAndFoldersToExclude                     = @();
            DefenderMonitorFileActivity                          = "userDefined";
            DefenderProcessesToExclude                           = @();
            DefenderPromptForSampleSubmission                    = "userDefined";
            DefenderRequireBehaviorMonitoring                    = $False;
            DefenderRequireCloudProtection                       = $False;
            DefenderRequireNetworkInspectionSystem               = $False;
            DefenderRequireRealTimeMonitoring                    = $False;
            DefenderScanArchiveFiles                             = $False;
            DefenderScanDownloads                                = $False;
            DefenderScanIncomingMail                             = $False;
            DefenderScanMappedNetworkDrivesDuringFullScan        = $False;
            DefenderScanNetworkFiles                             = $False;
            DefenderScanRemovableDrivesDuringFullScan            = $False;
            DefenderScanScriptsLoadedInInternetExplorer          = $False;
            DefenderScanType                                     = "userDefined";
            DefenderSystemScanSchedule                           = "userDefined";
            DeveloperUnlockSetting                               = "notConfigured";
            DeviceManagementBlockFactoryResetOnMobile            = $False;
            DeviceManagementBlockManualUnenroll                  = $False;
            DiagnosticsDataSubmissionMode                        = "basic";
            DisplayName                                          = "WIN10/11 - Telemetry";
            EdgeAllowStartPagesModification                      = $False;
            EdgeBlockAccessToAboutFlags                          = $False;
            EdgeBlockAddressBarDropdown                          = $False;
            EdgeBlockAutofill                                    = $False;
            EdgeBlockCompatibilityList                           = $False;
            EdgeBlockDeveloperTools                              = $False;
            EdgeBlocked                                          = $False;
            EdgeBlockExtensions                                  = $False;
            EdgeBlockInPrivateBrowsing                           = $False;
            EdgeBlockJavaScript                                  = $False;
            EdgeBlockLiveTileDataCollection                      = $False;
            EdgeBlockPasswordManager                             = $False;
            EdgeBlockPopups                                      = $False;
            EdgeBlockSearchSuggestions                           = $False;
            EdgeBlockSendingDoNotTrackHeader                     = $False;
            EdgeBlockSendingIntranetTrafficToInternetExplorer    = $False;
            EdgeClearBrowsingDataOnExit                          = $False;
            EdgeCookiePolicy                                     = "userDefined";
            EdgeDisableFirstRunPage                              = $False;
            EdgeHomepageUrls                                     = @();
            EdgeRequireSmartScreen                               = $False;
            EdgeSendIntranetTrafficToInternetExplorer            = $False;
            EdgeSyncFavoritesWithInternetExplorer                = $False;
            Ensure                                               = "Present";
            ExperienceBlockDeviceDiscovery                       = $False;
            ExperienceBlockErrorDialogWhenNoSIM                  = $False;
            ExperienceBlockTaskSwitcher                          = $False;
            GameDvrBlocked                                       = $False;
            InternetSharingBlocked                               = $False;
            LocationServicesBlocked                              = $False;
            LockScreenAllowTimeoutConfiguration                  = $False;
            LockScreenBlockActionCenterNotifications             = $False;
            LockScreenBlockCortana                               = $False;
            LockScreenBlockToastNotifications                    = $False;
            LogonBlockFastUserSwitching                          = $False;
            Managedidentity                                      = $False;
            MicrosoftAccountBlocked                              = $False;
            MicrosoftAccountBlockSettingsSync                    = $False;
            NetworkProxyApplySettingsDeviceWide                  = $False;
            NetworkProxyDisableAutoDetect                        = $False;
            NfcBlocked                                           = $False;
            OneDriveDisableFileSync                              = $False;
            PasswordBlockSimple                                  = $False;
            PasswordRequired                                     = $False;
            PasswordRequiredType                                 = "deviceDefault";
            PasswordRequireWhenResumeFromIdleState               = $False;
            PrivacyAdvertisingId                                 = "notConfigured";
            PrivacyAutoAcceptPairingAndConsentPrompts            = $False;
            PrivacyBlockInputPersonalization                     = $False;
            ResetProtectionModeBlocked                           = $False;
            SafeSearchFilter                                     = "userDefined";
            ScreenCaptureBlocked                                 = $False;
            SearchBlockDiacritics                                = $False;
            SearchDisableAutoLanguageDetection                   = $False;
            SearchDisableIndexerBackoff                          = $False;
            SearchDisableIndexingEncryptedItems                  = $False;
            SearchDisableIndexingRemovableDrive                  = $False;
            SearchEnableAutomaticIndexSizeManangement            = $False;
            SearchEnableRemoteQueries                            = $False;
            SettingsBlockAccountsPage                            = $False;
            SettingsBlockAddProvisioningPackage                  = $False;
            SettingsBlockAppsPage                                = $False;
            SettingsBlockChangeLanguage                          = $False;
            SettingsBlockChangePowerSleep                        = $False;
            SettingsBlockChangeRegion                            = $False;
            SettingsBlockChangeSystemTime                        = $False;
            SettingsBlockDevicesPage                             = $False;
            SettingsBlockEaseOfAccessPage                        = $False;
            SettingsBlockEditDeviceName                          = $False;
            SettingsBlockGamingPage                              = $False;
            SettingsBlockNetworkInternetPage                     = $False;
            SettingsBlockPersonalizationPage                     = $False;
            SettingsBlockPrivacyPage                             = $False;
            SettingsBlockRemoveProvisioningPackage               = $False;
            SettingsBlockSettingsApp                             = $False;
            SettingsBlockSystemPage                              = $False;
            SettingsBlockTimeLanguagePage                        = $False;
            SettingsBlockUpdateSecurityPage                      = $False;
            SharedUserAppDataAllowed                             = $False;
            SmartScreenBlockPromptOverride                       = $False;
            SmartScreenBlockPromptOverrideForFiles               = $False;
            SmartScreenEnableAppInstallControl                   = $False;
            StartBlockUnpinningAppsFromTaskbar                   = $False;
            StartMenuAppListVisibility                           = "userDefined";
            StartMenuHideChangeAccountSettings                   = $False;
            StartMenuHideFrequentlyUsedApps                      = $False;
            StartMenuHideHibernate                               = $False;
            StartMenuHideLock                                    = $False;
            StartMenuHidePowerButton                             = $False;
            StartMenuHideRecentJumpLists                         = $False;
            StartMenuHideRecentlyAddedApps                       = $False;
            StartMenuHideRestartOptions                          = $False;
            StartMenuHideShutDown                                = $False;
            StartMenuHideSignOut                                 = $False;
            StartMenuHideSleep                                   = $False;
            StartMenuHideSwitchAccount                           = $False;
            StartMenuHideUserTile                                = $False;
            StartMenuMode                                        = "userDefined";
            StartMenuPinnedFolderDocuments                       = "notConfigured";
            StartMenuPinnedFolderDownloads                       = "notConfigured";
            StartMenuPinnedFolderFileExplorer                    = "notConfigured";
            StartMenuPinnedFolderHomeGroup                       = "notConfigured";
            StartMenuPinnedFolderMusic                           = "notConfigured";
            StartMenuPinnedFolderNetwork                         = "notConfigured";
            StartMenuPinnedFolderPersonalFolder                  = "notConfigured";
            StartMenuPinnedFolderPictures                        = "notConfigured";
            StartMenuPinnedFolderSettings                        = "notConfigured";
            StartMenuPinnedFolderVideos                          = "notConfigured";
            StorageBlockRemovableStorage                         = $False;
            StorageRequireMobileDeviceEncryption                 = $False;
            StorageRestrictAppDataToSystemVolume                 = $False;
            StorageRestrictAppInstallToSystemVolume              = $False;
            TenantLockdownRequireNetworkDuringOutOfBoxExperience = $False;
            UsbBlocked                                           = $False;
            VoiceRecordingBlocked                                = $False;
            WebRtcBlockLocalhostIpAddress                        = $False;
            WiFiBlockAutomaticConnectHotspots                    = $False;
            WiFiBlocked                                          = $False;
            WiFiBlockManualConfiguration                         = $False;
            WindowsSpotlightBlockConsumerSpecificFeatures        = $False;
            WindowsSpotlightBlocked                              = $False;
            WindowsSpotlightBlockOnActionCenter                  = $False;
            WindowsSpotlightBlockTailoredExperiences             = $False;
            WindowsSpotlightBlockThirdPartyNotifications         = $False;
            WindowsSpotlightBlockWelcomeExperience               = $False;
            WindowsSpotlightBlockWindowsTips                     = $False;
            WindowsSpotlightConfigureOnLockScreen                = "notConfigured";
            WindowsStoreBlockAutoUpdate                          = $False;
            WindowsStoreBlocked                                  = $False;
            WindowsStoreEnablePrivateStoreOnly                   = $False;
            WirelessDisplayBlockProjectionToThisDevice           = $False;
            WirelessDisplayBlockUserInputFromReceiver            = $False;
            WirelessDisplayRequirePinForPairing                  = $False;
        }
        IntuneDeviceEnrollmentLimitRestriction 1d85ab9f-72c5-4df1-abb4-6f00fcf9dfda
        {
            Credential           = $Credscredential;
            Description          = "This is the default Device Limit Restriction applied with the lowest priority to all users regardless of group membership.";
            DisplayName          = "All users and all devices";
            Ensure               = "Present";
            Limit                = 5;
            Managedidentity      = $False;
        }
        IntuneDeviceEnrollmentPlatformRestriction f70831af-7e63-4a41-b28d-160ca14eea50
        {
            AndroidOSMaximumVersion                      = "";
            AndroidOSMinimumVersion                      = "";
            AndroidPersonalDeviceEnrollmentBlocked       = $False;
            AndroidPlatformBlocked                       = $False;
            Credential                                   = $Credscredential;
            Description                                  = "This is the default Device Type Restriction applied with the lowest priority to all users regardless of group membership.";
            DisplayName                                  = "All users and all devices";
            Ensure                                       = "Present";
            iOSOSMaximumVersion                          = "";
            iOSOSMinimumVersion                          = "";
            iOSPersonalDeviceEnrollmentBlocked           = $False;
            iOSPlatformBlocked                           = $False;
            MacPersonalDeviceEnrollmentBlocked           = $False;
            MacPlatformBlocked                           = $False;
            Managedidentity                              = $False;
            WindowsMobileOSMaximumVersion                = "";
            WindowsMobileOSMinimumVersion                = "";
            WindowsMobilePersonalDeviceEnrollmentBlocked = $False;
            WindowsMobilePlatformBlocked                 = $True;
            WindowsOSMaximumVersion                      = "";
            WindowsOSMinimumVersion                      = "";
            WindowsPersonalDeviceEnrollmentBlocked       = $True;
            WindowsPlatformBlocked                       = $False;
        }
        O365AdminAuditLogConfig 6ed10341-b70f-49ca-834d-ed96a831ba9f
        {
            Credential                      = $Credscredential;
            Ensure                          = "Present";
            IsSingleInstance                = "Yes";
            UnifiedAuditLogIngestionEnabled = "Disabled";
        }
        O365OrgCustomizationSetting affd5b69-bda5-4c5d-9771-db4fcec0c6a2
        {
            Credential           = $Credscredential;
            Ensure               = "Present";
            IsSingleInstance     = "Yes";
        }
    }
}

dsc -ConfigurationData .\ConfigurationData.psd1 -Credential $Credential