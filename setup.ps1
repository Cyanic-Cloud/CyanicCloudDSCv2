# Installs, configures and sets a credential for use with M365 DSC

$InformationPreference = 'Continue'
$ErrorActionPreference = 'Stop'

$env:PSModulePath += ";$PSScriptRoot\Modules"
Import-Module $PSScriptRoot\Modules\Microsoft365DSC

winrm quickconfig -force

# NOTE: Need to run Register-PnPManagementShellAccess manually before using for the first time

Set-M365DSCTelemetryOption -Enabled $False

if ($env:AAD_USERNAME -and $env:AAD_PASSWORD) {
    # For Demonstration Purposes ONLY - use Certificate or Application Secret in Production
    $Credential = New-Object System.Management.Automation.PSCredential ($env:AAD_USERNAME, (ConvertTo-SecureString -AsPlainText -Force $env:AAD_PASSWORD))
    
    # Configure git user info so we can commit changes
    git config --global user.email $env:AAD_USERNAME
    git config --global user.name $env:AAD_USERNAME
}

if (!$Credential) { 
    $Credential = Get-Credential
}
