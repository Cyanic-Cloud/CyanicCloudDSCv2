@{

# Script module or binary module file associated with this manifest.
RootModule = 'Microsoft.PowerApps.Administration.Powershell.psm1'

# Version number of this module.
ModuleVersion = '2.0.138'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '1c40b0da-ee6a-4226-9a3d-e60092e1daae'

# Author of this module
Author = 'Microsoft Common Data Service Team'

# Company or vendor of this module
CompanyName = 'Microsoft'

# Copyright statement for this module
Copyright = '© 2020 Microsoft Corporation. All rights reserved'

# Description of the functionality provided by this module
Description = 'PowerShell interface for Microsoft PowerApps and Flow Administrative features'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
PowerShellHostVersion = '1.0'

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.0.0.0'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
#RequiredModules = @(@{ModuleName = "Microsoft.PowerApps.RestClientModule"; ModuleVersion = "1.0"; Guid = "04800678-e13e-4b41-8d46-424e707ea733"})
#RequiredModules = @(@{ModuleName = "Microsoft.PowerApps.RestClientModule"; ModuleVersion = "1.0"; Guid = "04800678-e13e-4b41-8d46-424e707ea733"})

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
#NestedModules = @('Microsoft.PowerApps.AuthModule', 'Microsoft.PowerApps.RestClientModule')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'New-AdminPowerAppCdsDatabase', `
    'Get-AdminPowerAppCdsDatabaseLanguages', `
    'Get-AdminPowerAppCdsDatabaseCurrencies', `
    'Get-AdminPowerAppEnvironmentLocations', `
    'Get-AdminPowerAppCdsDatabaseTemplates', `
    'New-AdminPowerAppEnvironment', `
    'Set-AdminPowerAppEnvironmentDisplayName', `
    'Set-AdminPowerAppEnvironmentRuntimeState', `
    'Get-AdminPowerAppEnvironment', `
    'Get-AdminPowerAppSoftDeletedEnvironment', `
    'Get-AdminPowerAppOperationStatus', `
    'Remove-AdminPowerAppEnvironment', `
    'Recover-AdminPowerAppEnvironment', `
    'Reset-PowerAppEnvironment', `
    'Get-AdminPowerAppEnvironmentRoleAssignment', `
    'Set-AdminPowerAppEnvironmentRoleAssignment', `
    'Remove-AdminPowerAppEnvironmentRoleAssignment', `
    'Get-AdminPowerApp', `
    'Remove-AdminPowerApp', `
    'Get-AdminPowerAppRoleAssignment', `
    'Remove-AdminPowerAppRoleAssignment', `
    'Set-AdminPowerAppRoleAssignment', `
    'Set-AdminPowerAppOwner', `
    'Get-AdminFlow', `
    'Add-PowerAppsCustomBrandingAssets', `
    'Enable-AdminFlow', `
    'Disable-AdminFlow', `
    'Remove-AdminFlow', `
    'Remove-AdminFlowApprovals', `
    'Set-AdminFlowOwnerRole', `
    'Remove-AdminFlowOwnerRole', `
    'Get-AdminFlowOwnerRole', `
    'Get-AdminPowerAppConnector', `
    'Get-AdminPowerAppConnectorAction', `
    'Get-AdminPowerAppConnectorRoleAssignment', `
    'Set-AdminPowerAppConnectorRoleAssignment', `
    'Remove-AdminPowerAppConnectorRoleAssignment', `
    'Remove-AdminPowerAppConnector', `
    'Get-AdminPowerAppConnection', `
    'Remove-AdminPowerAppConnection', `
    'Get-AdminPowerAppConnectionRoleAssignment', `
    'Set-AdminPowerAppConnectionRoleAssignment', `
    'Remove-AdminPowerAppConnectionRoleAssignment', `
    'Get-AdminPowerAppsUserDetails', `
    'Get-AdminFlowUserDetails', `
    'Remove-AdminFlowUserDetails', `
    'Set-AdminPowerAppAsFeatured', `
    'Clear-AdminPowerAppAsFeatured', `
    'Set-AdminPowerAppAsHero', `
    'Clear-AdminPowerAppAsHero', `
    'Set-AppAsUnquarantined', `
    'Set-AppAsQuarantined', `
	'Get-AppQuarantineState', `
    'Set-AdminPowerAppApisToBypassConsent', `
    'Clear-AdminPowerAppApisToBypassConsent', `
    'Get-AdminPowerAppConditionalAccessAuthenticationContextIds', `
    'Set-AdminPowerAppConditionalAccessAuthenticationContextIds', `
    'Remove-AdminPowerAppConditionalAccessAuthenticationContextIds', `
    'Get-AdminDlpPolicy', `
    'New-AdminDlpPolicy', `
    'Remove-AdminDlpPolicy', `
    'Set-AdminDlpPolicy', `
    'Add-ConnectorToBusinessDataGroup', `
    'Remove-ConnectorFromBusinessDataGroup', `
    'Get-AdminPowerAppConnectionReferences', `
    'Add-CustomConnectorToPolicy', `
    'Remove-CustomConnectorFromPolicy', `
    'Remove-LegacyCDSDatabase', `
    'Get-AdminDeletedPowerAppsList', `
    'Get-AdminRecoverDeletedPowerApp', `
    #from Rest and Auth Module Helpers
    'Select-CurrentEnvironment', `
    'Add-PowerAppsAccount', `
    'Remove-PowerAppsAccount',`
    'Test-PowerAppsAccount', `
    'Get-TenantDetailsFromGraph', `
    'Get-UsersOrGroupsFromGraph', `
    'Get-JwtToken', `
    'ReplaceMacro', `
    'Set-TenantSettings', `
    'Get-TenantSettings', `
    'Get-AdminPowerAppTenantConsumedQuota', `
    'InvokeApi', `
    'InvokeApiNoParseContent', `
    'Add-AdminPowerAppsSyncUser', `
    'Remove-AllowedConsentPlans', `
    'Add-AllowedConsentPlans', `
    'Get-AllowedConsentPlans', `
    'Get-AdminPowerAppCdsAdditionalNotificationEmails', `
    'Set-AdminPowerAppCdsAdditionalNotificationEmails', `
    'Get-AdminPowerAppLicenses', `
    'Set-AdminPowerAppDesiredLogicalName' `
    # DLP policy Version 1 APIs
    'Get-DlpPolicy', `
    'New-DlpPolicy', `
    'Remove-DlpPolicy', `
    'Set-DlpPolicy', `
    # URL patterns Version 1 APIs
    'Get-PowerAppTenantUrlPatterns', `
    'New-PowerAppTenantUrlPatterns', `
    'Remove-PowerAppTenantUrlPatterns', `
    'Get-PowerAppPolicyUrlPatterns', `
    'New-PowerAppPolicyUrlPatterns', `
    'Remove-PowerAppPolicyUrlPatterns', `
    # Dlp policy connector configurations Version 1 APIs
    'Get-PowerAppDlpPolicyConnectorConfigurations', `
    'New-PowerAppDlpPolicyConnectorConfigurations', `
    'Remove-PowerAppDlpPolicyConnectorConfigurations', `
    'Set-PowerAppDlpPolicyConnectorConfigurations', `
    # Copy/Backup/Restore APIs
    'Copy-PowerAppEnvironment', `
    'Backup-PowerAppEnvironment', `
    'Get-PowerAppEnvironmentBackups', `
    'Restore-PowerAppEnvironment', `
    'Remove-PowerAppEnvironmentBackup', `
    # ManagementApp APIs
    'Get-PowerAppManagementApp', `
    'Get-PowerAppManagementApps', `
    'New-PowerAppManagementApp', `
    'Remove-PowerAppManagementApp', `
    # Environment Keywords
    'Get-AdminPowerAppSharepointFormEnvironment', `
    'Set-AdminPowerAppSharepointFormEnvironment', `
    'Reset-AdminPowerAppSharepointFormEnvironment', `
    # Protection key APIs
    'Get-PowerAppGenerateProtectionKey', `
    'Get-PowerAppRetrieveTenantProtectionKey', `
    'Get-PowerAppRetrieveAvailableTenantProtectionKeys', `
    'New-PowerAppImportProtectionKey', `
    'Set-PowerAppProtectionStatus', `
    'Set-PowerAppTenantProtectionKey', `
    'Set-PowerAppLockAllEnvironments', `
    'Set-PowerAppUnlockEnvironment', `
    # Tenant isolation APIs
    'Get-PowerAppTenantIsolationPolicy', `
    'Set-PowerAppTenantIsolationPolicy', `
    'Get-PowerAppTenantIsolationOperationStatus', `
	# Dlp Error Settings APIs
	'Get-PowerAppDlpErrorSettings', `
	'New-PowerAppDlpErrorSettings', `
	'Set-PowerAppDlpErrorSettings', `
	'Remove-PowerAppDlpErrorSettings', `
    # Dlp policy exempt resources Version 1 APIs
	'Get-PowerAppDlpPolicyExemptResources', `
	'New-PowerAppDlpPolicyExemptResources', `
	'Remove-PowerAppDlpPolicyExemptResources', `
	'Set-PowerAppDlpPolicyExemptResources', `
	# virtual connector Route
	'Get-AdminVirtualConnectors', `
    # Dlp Connector blocking APIs
    'Get-PowerAppDlpConnectorBlockingPolicies', `
    'Get-PowerAppDlpConnectorBlockingPolicy', `
    'New-PowerAppDlpConnectorBlockingPolicy', `
    'Set-PowerAppDlpConnectorBlockingPolicy', `
    'Remove-PowerAppDlpConnectorBlockingPolicy'

)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
# CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
# AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
ModuleList = @("Microsoft.PowerApps.Administration.PowerShell" )

# List of all files packaged with this module
# When included they are automatically loaded which can pull the files by name from uncontrolled locations.
FileList = @(
    "Microsoft.PowerApps.Administration.PowerShell.psm1", `
    "Microsoft.PowerApps.Administration.PowerShell.psd1", `
    "Microsoft.PowerApps.AuthModule.psm1", `
    "Microsoft.PowerApps.RestClientModule.psm1"
)

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
         LicenseUri = 'https://aka.ms/powerappspowershellprereleaseterms'

        # A URL to the main website for this project.
         ProjectUri = 'https://docs.microsoft.com/en-us/powerapps/administrator/powerapps-powershell'

        # A URL to an icon representing this module.
         IconUri = 'https://connectoricons-prod.azureedge.net/powerplatformforadmins/icon_1.0.1056.1255.png'

        # ReleaseNotes of this module
        ReleaseNotes = '

Current Release:
2.0.138
    Added new Apis for Connector blocking Policy
        Get-PowerAppDlpConnectorBlockingPolicies,
        Get-PowerAppDlpConnectorBlockingPolicy,
        New-PowerAppDlpConnectorBlockingPolicy,
        Set-PowerAppDlpConnectorBlockingPolicy,
        Remove-PowerAppDlpConnectorBlockingPolicy

2.0.113
    Add Set-AdminPowerAppDesiredLogicalName to enable setting desired logical name for non-solution aware canvas apps

2.0.112
    Add virtual connector call
    Get-AdminVirtualConnectors

2.0.111:
    Added new APIS for DLP Policy Exempt Resources APIs
        Get-PowerAppDlpPolicyExemptResources,
        New-PowerAppDlpPolicyExemptResources,
        Remove-PowerAppDlpPolicyExemptResources,
        Set-PowerAppDlpPolicyExemptResources    

2.0.110:
    Add Teams environment in New-AdminPowerAppEnvironment and add EnvironmentSku filter in Get-AdminPowerAppEnvironment
    
2.0.109:
    Add support for AzureRegion selection in New-AdminPowerAppEnvironment
    Added new APIs for error settings DLP:
        Get-PowerAppDlpErrorSettings,
        New-PowerAppDlpErrorSettings,
        Set-PowerAppDlpErrorSettings,
        Remove-PowerAppDlpErrorSettings

2.0.101:
    Revert "Add-CustomConnectorToPolicy is limited to only work for environment-level policies"

2.0.100:
    Add-CustomConnectorToPolicy is limited to only work for environment-level policies

2.0.96:
    Add tenant isolation APIs
    Skip triggers in Get-AdminPowerAppConnectorAction

2.0.92:
    Fix polling behavior on failures for environment lifecycle operations

2.0.86:
    Add Get-AdminPowerAppConnectorAction API

2.0.81:
    Add new DLP Policy Connector Configurations APIs:
        Get-PowerAppDlpPolicyConnectorConfigurations,
        New-PowerAppDlpPolicyConnectorConfigurations,
        Remove-PowerAppDlpPolicyConnectorConfigurations,
        Set-PowerAppDlpPolicyConnectorConfigurations

2.0.77:
    Add ProtectionKey APIs:
        Get-PowerAppGenerateProtectionKey,
        Get-PowerAppRetrieveTenantProtectionKey,
        Get-PowerAppRetrieveAvailableTenantProtectionKeys,
        New-PowerAppImportProtectionKey,
        Set-PowerAppProtectionStatus,
        Set-PowerAppTenantProtectionKey,
        Set-PowerAppLockAllEnvironments,
        Set-PowerAppUnlockEnvironment

2.0.76:
    Add Get-AdminPowerAppTenantConsumedQuota API and GetProtectedEnvironment parameter for Get-AdminPowerAppEnvironment

2.0.75:
    Add ManagementApp APIs:
        Get-PowerAppManagementApp,
        Get-PowerAppManagementApps,
        New-PowerAppManagementApp,
        Remove-PowerAppManagementApp

    Add Sharepoint Environment APIs:
        Get-AdminPowerAppSharepointFormEnvironment
        Set-AdminPowerAppSharepointFormEnvironment
        Reset-AdminPowerAppSharepointFormEnvironment

2.0.72:
    Fix bugs for SPN error handling

2.0.70:
    Add test automation support
    Added new APIs:
        Get-PowerAppTenantUrlPatterns,
        New-PowerAppTenantUrlPatterns,
        Remove-PowerAppTenantUrlPatterns,
        Get-PowerAppPolicyUrlPatterns,
        New-PowerAppPolicyUrlPatterns,
        Remove-PowerAppPolicyUrlPatterns

2.0.67:
    Add Set-AdminPowerAppEnvironmentRuntimeState API

2.0.66:
    Add SubscriptionBasedTrial SKU support.

2.0.65:
    Add Get-AdminPowerAppOperationStatus API for async scenario support.

2.0.64:
    Added new APIs:
        Copy-PowerAppEnvironment,
        Backup-PowerAppEnvironment,
        Get-PowerAppEnvironmentBackups,
        Restore-PowerAppEnvironment,
        Remove-PowerAppEnvironmentBackup,
        Reset-PowerAppEnvironment

2.0.63:
    Added DoD support. Fix bug PowerShell Cmdlet "Set-AdminPowerAppRoleAssignment" is broken when setting the tenant sharing.

2.0.61:
    BREAKING CHANGE: Changed return value to environment object when New-AdminPowerAppEnvironment CDS provision completed.
    Fixed empty return error bug (error code and error message will be returned when API fails).

2.0.60:
    Add TimeoutInMinutes parameter in New-AdminPowerAppEnvironment to make timeout configurable.
    BREAKING CHANGE: The default timeout is changed to a week (waiting for server timeout).
    Fixed "Cannot bind argument to parameter ''Route'' because it is an empty string" exception for New-AdminPowerAppEnvironment.

2.0.59:
    Fixed removing connector from policy that had been added with an invalid connector ID.

2.0.57:
    Fixed pagination problem for Get-DlpPolicy, Get-AdminFlow, and Get-AdminPowerApp.

2.0.56:
    Fixed duplicate key error for ConvertFrom-Json with case-invariant comparison.

2.0.53:
    Added early Public Preview release of DLP (Data Loss Prevention) v2 PowerShell cmdlets

2.0.52:
    Introduced new cmdlets for admins to list and recover deleted Power Apps

2.0.45:
    Fixed missing Example sections for some incorrectly formatted cmdlet headers

2.0.44:
    Added a cmdlet to download a manifest of all user''s Power Apps licenses for a tenant

2.0.42:
    Fixed cmdlet deadlock issue when long-running operations reached a timeout condition

2.0.40:
    Fixed set of codes to wait for when long-running operations were checking for status
    Fixed an incorrect error message when creating a CDS database environment failed
    Fixed defective ability to associate new DLP policies with specific environments

2.0.37:
    Fixed bug when deserializing "Common Data Service for Apps" environment information
    Introduced new cmdlets for admins to get and set additional notification emails

2.0.34:
    Added logic to skip filtered flows that could not be deserialized instead of failing
    Fixed bug that prevented paging from working properly when getting all flows as admin

2.0.33:
    Enabled creation of new environments as type Sandbox [addition to Trial and Production]

2.0.31:
    Introduced new cmdlets for admins to list and recover soft-deleted environments

2.0.27:
    Revamp cmdlets to block and allow consent plans in response to breaking service change

2.0.26:
    Fixed a handful of bugs related to parameters to create new CDS database environments

2.0.19:
    Introduced new cmdlet to get all CDS database templates so all inputs are retrievable

2.0.15:
    Introduced new cmdlet to sync licensed and authorized AAD tenant user into environment
    Fixed bugs in limited Private Preview cmdlets for DLP v1 connector Blocking [obsolete]
    Added limited Private Preview cmdlets for DLP v1 connector Blocking [obsolete]

2.0.12:
    Introduced new cmdlets to block and allow consent plans in tenant

2.0.6:
    Added support for the Verbose flag to extend to internal calls'
    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = 'PowerApp'

}

# SIG # Begin signature block
# MIIjkAYJKoZIhvcNAQcCoIIjgTCCI30CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDuB1cSTf8jJOPS
# G1AvXlK9FvidrMyRrV58gS+Q/KcavaCCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVZTCCFWECAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBoDAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgnFkIj0Rx
# vxVWZEHUMk9xh6z/HduHGwfboXSbuhzmy1owNAYKKwYBBAGCNwIBDDEmMCSgEoAQ
# AFQAZQBzAHQAUwBpAGcAbqEOgAxodHRwOi8vdGVzdCAwDQYJKoZIhvcNAQEBBQAE
# ggEArvKoh5wngcbpMqiMbTxs3pU0eGa809QjgeX/fElYmYVwqVF+6quoVyAZKuet
# cEuejUG93nB01FguBljXAUxStqi9vMIZFK8/j1CTi/z8TVY5oClHeSzSkm9pntP1
# IZHWjCPdqSgTqUwMNVur7hPvDScTNGs09M0z8bKmOvfWSqZVxq8TdDynPZAcEwsm
# 5X22F7KtEaVFACvsGdrLS9rLq4dXkX77XdmzZ5lNJTx6rb0hUjx8IG+IeiW0hDVB
# XPppYyivG2PlyiGDWhrmqGx/EW+8BLUvEcZR8HnpyGT0ddLrrzHBTZY9xCtbp8vq
# WtZHnq0SJn9QDzK7BHi/G25UOaGCEv0wghL5BgorBgEEAYI3AwMBMYIS6TCCEuUG
# CSqGSIb3DQEHAqCCEtYwghLSAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFYBgsqhkiG
# 9w0BCRABBKCCAUcEggFDMIIBPwIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFlAwQC
# AQUABCCUN9mWOMytcig8yzApkq8BbOCDK91abo8XRljjugnobAIGYUi489PvGBIy
# MDIxMTAwNzIwMTcxMC43M1owBIACAfSggdikgdUwgdIxCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5k
# IE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046MkFE
# NC00QjkyLUZBMDExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZp
# Y2Wggg5NMIIE+TCCA+GgAwIBAgITMwAAATjzlCHWYb7wKQAAAAABODANBgkqhkiG
# 9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYw
# JAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMDEwMTUx
# NzI4MjBaFw0yMjAxMTIxNzI4MjBaMIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRp
# b25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjJBRDQtNEI5Mi1G
# QTAxMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIBIjAN
# BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxbn4p6lecIMyAgKjbK7+A/vdqY+y
# 1pmgXIjOwXGvDAjy7aKPsp978FH+VPHh+3Yk9tc0ET3554bbS7TrObejbAH8bQ3U
# MqT7sU79nkALxKqykp2lYfI/ZvrDVBecswbz1v/9CZcTdrSailbNDIg1lTfSA0LD
# hebTt02J+R5eCZrhfXedCWJP1kt1jy0E5wJUryqYOhXsrgewGdQsdH2bvp5JfRip
# +vg8rwVAJ78RHbbT5xTof+oFLOCAgmJG0e2yC7PAItErKPMWjM86pkVKR6atoVKu
# A5oG4d4NWktiUzKT2bynwlVkx74uu6rF7U+56udCwwk2mnNjD+OXDhyPGQIDAQAB
# o4IBGzCCARcwHQYDVR0OBBYEFN/qrdzo76xTsTL7OYjFYMGeccC1MB8GA1UdIwQY
# MBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6
# Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1RpbVN0YVBD
# QV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0
# dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljVGltU3RhUENBXzIw
# MTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgw
# DQYJKoZIhvcNAQELBQADggEBAKN4sEhcC7G/DRKQy9LIto5OI5VZUgS3SBFZrNHs
# r/ZzR5MsaiY3eVxm9zZmbg+m4utdCi8FcUdPScD6r8FotfHO3dF/I6rjXej/sGbN
# v7h8HsBPWmL3Se+mZ+//IQrFi5rktqxs6LSkCPirmMhYZ6hUfJgN4PgtkG/mwqSq
# F04f74G8A2JHwhDzsLBi4MYBZDT4KLJ9KAOgWZAmS4O3MAYxzsfbsN0WsjMgDMq8
# B2XqQNzILESwkAPRJKWXfX73C6IJS5MHWarGIj+BygDs5p6M28w53sXPWAKNAqt7
# ZGBaspG+k/t3xfWAm8eD4CnvEKSVM8Vffr2HwG+CUgACppowggZxMIIEWaADAgEC
# AgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0
# aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0xMDA3MDEyMTM2NTVaFw0yNTA3MDEy
# MTQ2NTVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAk
# BgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMIIBIjANBgkqhkiG
# 9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqR0NvHcRijog7PwTl/X6f2mUa3RUENWlCgCC
# hfvtfGhLLF/Fw+Vhwna3PmYrW/AVUycEMR9BGxqVHc4JE458YTBZsTBED/FgiIRU
# QwzXTbg4CLNC3ZOs1nMwVyaCo0UN0Or1R4HNvyRgMlhgRvJYR4YyhB50YWeRX4FU
# sc+TTJLBxKZd0WETbijGGvmGgLvfYfxGwScdJGcSchohiq9LZIlQYrFd/XcfPfBX
# day9ikJNQFHRD5wGPmd/9WbAA5ZEfu/QS/1u5ZrKsajyeioKMfDaTgaRtogINeh4
# HLDpmc085y9Euqf03GS9pAHBIAmTeM38vMDJRF1eFpwBBU8iTQIDAQABo4IB5jCC
# AeIwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFNVjOlyKMZDzQ3t8RhvFM2ha
# hW1VMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNV
# HRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYG
# A1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3Js
# L3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcB
# AQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kv
# Y2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MIGgBgNVHSABAf8EgZUw
# gZIwgY8GCSsGAQQBgjcuAzCBgTA9BggrBgEFBQcCARYxaHR0cDovL3d3dy5taWNy
# b3NvZnQuY29tL1BLSS9kb2NzL0NQUy9kZWZhdWx0Lmh0bTBABggrBgEFBQcCAjA0
# HjIgHQBMAGUAZwBhAGwAXwBQAG8AbABpAGMAeQBfAFMAdABhAHQAZQBtAGUAbgB0
# AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEAB+aIUQ3ixuCYP4FxAz2do6Ehb7Prpsz1
# Mb7PBeKp/vpXbRkws8LFZslq3/Xn8Hi9x6ieJeP5vO1rVFcIK1GCRBL7uVOMzPRg
# Eop2zEBAQZvcXBf/XPleFzWYJFZLdO9CEMivv3/Gf/I3fVo/HPKZeUqRUgCvOA8X
# 9S95gWXZqbVr5MfO9sp6AG9LMEQkIjzP7QOllo9ZKby2/QThcJ8ySif9Va8v/rbl
# jjO7Yl+a21dA6fHOmWaQjP9qYn/dxUoLkSbiOewZSnFjnXshbcOco6I8+n99lmqQ
# eKZt0uGc+R38ONiU9MalCpaGpL2eGq4EQoO4tYCbIjggtSXlZOz39L9+Y1klD3ou
# OVd2onGqBooPiRa6YacRy5rYDkeagMXQzafQ732D8OE7cQnfXXSYIghh2rBQHm+9
# 8eEA3+cxB6STOvdlR3jo+KhIq/fecn5ha293qYHLpwmsObvsxsvYgrRyzR30uIUB
# HoD7G4kqVDmyW9rIDVWZeodzOwjmmC3qjeAzLhIp9cAvVCch98isTtoouLGp25ay
# p0Kiyc8ZQU3ghvkqmqMRZjDTu3QyS99je/WZii8bxyGvWbWu3EQ8l1Bx16HSxVXj
# ad5XwdHeMMD9zOZN+w2/XU/pnR4ZOC+8z1gFLu8NoFA12u8JJxzVs341Hgi62jbb
# 01+P3nSISRKhggLXMIICQAIBATCCAQChgdikgdUwgdIxCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5k
# IE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046MkFE
# NC00QjkyLUZBMDExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZp
# Y2WiIwoBATAHBgUrDgMCGgMVAEC86zs20AKnzakuISFLJspZ5oH5oIGDMIGApH4w
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJKoZIhvcNAQEFBQACBQDl
# CaAaMCIYDzIwMjExMDA4MDAzNDM0WhgPMjAyMTEwMDkwMDM0MzRaMHcwPQYKKwYB
# BAGEWQoEATEvMC0wCgIFAOUJoBoCAQAwCgIBAAICL+4CAf8wBwIBAAICEvUwCgIF
# AOUK8ZoCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGEWQoDAqAKMAgCAQAC
# AwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOBgQChOKt2+4sQzoT6dV93
# FPCshgUNOuBEEvogNYQjUVdbkt15nWSejPe5EyX+JC3eKwgSXH2e/Da+0Qw2/rXH
# M7G2v2z7rarYle6I81/ecFJ1ZtBfqQ2A7GVtzlxJ6Yl2Z1AZtVqlWnp3jSojL01j
# nIBYNanwE9Biu6ictToP8OgYaDGCAw0wggMJAgEBMIGTMHwxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFBDQSAyMDEwAhMzAAABOPOUIdZhvvApAAAAAAE4MA0GCWCGSAFlAwQC
# AQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQwLwYJKoZIhvcNAQkE
# MSIEIFDRU5SUkv7uVmg2z+Gx9v3ofWNsh0YBQyePqShqm+TxMIH6BgsqhkiG9w0B
# CRACLzGB6jCB5zCB5DCBvQQgQ0CTSvl/RCqSSGLiLKbu7sbS3mjmCOpO+ith7RaP
# hygwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAATjz
# lCHWYb7wKQAAAAABODAiBCBLezHi0aJRo+v0IUH3PkYARMKYmgwLUZ7xlOfT2sMx
# szANBgkqhkiG9w0BAQsFAASCAQCWrXyskRliD4soQfBUKMaN8vg0GbP3JOdMAqCc
# lxkW+YQAOrhLOcu9u+PWwO38nnUtyznA8o9BcGtElcrZIp37rkMnv4a+T5h2ntEj
# nkbCfp5mNieEOW4dHR6dXwtku0Us7mHWYp6PbZ94dusI0YYOZrXyYBJCPclM7P4z
# OtI14bkIv+M8SW8gf/hmez1dhpYJjUEArlFF+oobQMq1GiTvLnHgc3l8QU8Dg/O3
# zw4e+3R40oFyc8TSwBBJsx58wWh1j6RmVIr7GfHtqo2FwRuhOIeWX+SG1BBG7Vz2
# vEN6W0zEyqYESYTvxC+lCZLaGJL0nAIHgXC7+sSiAnh85bBd
# SIG # End signature block
