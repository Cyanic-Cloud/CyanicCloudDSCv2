. $PSScriptRoot\setup.ps1

$existiingExport = Get-Item -Path (Join-Path $PSScriptRoot 'dsc.ps1') -ErrorAction SilentlyContinue
if ($existiingExport){
    Write-Host "Backing up old export file"
    Remove-Item '.\dsc-backup.ps1' -ErrorAction SilentlyContinue
    Rename-Item $existiingExport.FullName -NewName 'dsc-backup.ps1' -Force
}

Write-Information 'Running Microsoft365DSC Export'
# Created using: Export-M365DSCConfiguration -LaunchWebUI
Export-M365DSCConfiguration -Components @("AADApplication", "AADConditionalAccessPolicy", "AADGroup", "AADGroupLifecyclePolicy", "AADGroupsNamingPolicy", "AADGroupsSettings", "AADNamedLocationPolicy", "AADRoleDefinition", "AADTenantDetails", "AADTokenLifetimePolicy", "EXOAcceptedDomain", "EXOActiveSyncDeviceAccessRule", "EXOAddressBookPolicy", "EXOAddressList", "EXOAntiPhishPolicy", "EXOAntiPhishRule", "EXOApplicationAccessPolicy", "EXOAtpPolicyForO365", "EXOAvailabilityAddressSpace", "EXOAvailabilityConfig", "EXOCASMailboxPlan", "EXOClientAccessRule", "EXODkimSigningConfig", "EXOEmailAddressPolicy", "EXOGlobalAddressList", "EXOHostedConnectionFilterPolicy", "EXOHostedContentFilterPolicy", "EXOHostedContentFilterRule", "EXOHostedOutboundSpamFilterPolicy", "EXOHostedOutboundSpamFilterRule", "EXOInboundConnector", "EXOIntraOrganizationConnector", "EXOJournalRule", "EXOMailTips", "EXOMalwareFilterPolicy", "EXOMalwareFilterRule", "EXOMobileDeviceMailboxPolicy", "EXOOfflineAddressBook", "EXOOnPremisesOrganization", "EXOOrganizationConfig", "EXOOrganizationRelationship", "EXOOutboundConnector", "EXOOwaMailboxPolicy", "EXOPartnerApplication", "EXOPolicyTipConfig", "EXORemoteDomain", "EXORoleAssignmentPolicy", "EXOSafeAttachmentPolicy", "EXOSafeAttachmentRule", "EXOSafeLinksPolicy", "EXOSafeLinksRule", "EXOSharedMailbox", "EXOSharingPolicy", "EXOTransportRule", "IntuneAppConfigurationPolicy", "IntuneAppProtectionPolicyiOS", "IntuneDeviceCategory", "IntuneDeviceCompliancePolicyAndroid", "IntuneDeviceCompliancePolicyAndroidWorkProfile", "IntuneDeviceCompliancePolicyiOs", "IntuneDeviceCompliancePolicyMacOS", "IntuneDeviceCompliancePolicyWindows10", "IntuneDeviceConfigurationPolicyiOS", "IntuneDeviceConfigurationPolicyWindows10", "IntuneDeviceEnrollmentLimitRestriction", "IntuneDeviceEnrollmentPlatformRestriction", "O365AdminAuditLogConfig", "O365OrgCustomizationSetting") -Credential $Credential -Path $PSScriptRoot -FileName dsc.ps1
Write-Information 'FINISHED - Export-M365DSCConfiguration'


# Generate HTML report from the updated configuration
New-M365DSCReportFromConfiguration -Type HTML -ConfigurationPath $PSScriptRoot\dsc.ps1 -OutputPath $PSScriptRoot\dsc.html
Write-Information 'FINISHED - Running New-M365DSCReportFromConfiguration'

# Using existing export, generate delta report
New-M365DSCDeltaReport -Source (Join-Path $PSScriptRoot 'dsc.ps1') `
    -Destination (Join-Path $PSScriptRoot 'dsc-backup.ps1') `
    -OutputPath (Join-Path $PSScriptRoot 'Export-Report.html') `
    -DriftOnly:$true `
    -IsBlueprintAssessment:$true `
    -HeaderFilePath $HeaderFilePath

# only copy relevant files to artifacts
Write-Information 'Trying to create Artifects folder'
$artifacts = (Join-Path $PSScriptRoot "artifacts")
New-Item -ItemType Directory -Force -Path $artifacts #| Out-Null

$filesToCopyToArtifacts = @('dsc.ps1', 'dsc.html', 'Export-Report.html')
foreach ($file in $filesToCopyToArtifacts) {
    Copy-Item -Path (Join-Path $PSScriptRoot $file)  -Destination $artifacts -Force
}

# Push the updated DSC configuration and report to the repository
Write-Host "Pushing code to repo - Test"
$branchName = "export/$(Get-Date -Format FileDateTimeUniversal)"
git checkout -b $branchName
git add .
git commit -m 'Export changes'
git checkout main
git merge $branchName
git push origin main
git branch -d $branchName