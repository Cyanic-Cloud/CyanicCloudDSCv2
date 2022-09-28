
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access
.Description
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementconditionalaccesssetting
#>
function Get-MgDeviceManagementConditionalAccessSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementConditionalAccessSetting_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of enrollmentConfigurationAssignment
    ${EnrollmentConfigurationAssignmentId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementdeviceenrollmentconfiguration
#>
function Get-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfiguration_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfiguration_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementDeviceEnrollmentConfiguration_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of importedWindowsAutopilotDeviceIdentity
    ${ImportedWindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Get';
            GetViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_GetViaIdentity';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgdevicemanagementwindowautopilotdeviceidentity
#>
function Get-MgDeviceManagementWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementWindowAutopilotDeviceIdentity_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementWindowAutopilotDeviceIdentity_GetViaIdentity1';
            List = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgDeviceManagementWindowAutopilotDeviceIdentity_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get roleManagement
.Description
Get roleManagement

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleManagement
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/get-mgrolemanagement
#>
function Get-MgRoleManagement {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleManagement])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Get-MgRoleManagement_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphEnrollmentConfigurationAssignment>: Enrollment Configuration Assignment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment]
    # Enrollment Configuration Assignment
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementAssignmentTarget]))]
    [System.Collections.Hashtable]
    # Base type for assignment targets.
    ${Target},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNMENTS <IMicrosoftGraphEnrollmentConfigurationAssignment[]>: The list of group assignments for the device configuration profile
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphDeviceEnrollmentConfiguration>: The Base Class of Device Enrollment Configuration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Assignments <IMicrosoftGraphEnrollmentConfigurationAssignment[]>]: The list of group assignments for the device configuration profile
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: Created date time in UTC of the device enrollment configuration
  [Description <String>]: The description of the device enrollment configuration
  [DisplayName <String>]: The display name of the device enrollment configuration
  [LastModifiedDateTime <DateTime?>]: Last modified date time in UTC of the device enrollment configuration
  [Priority <Int32?>]: Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value.
  [Version <Int32?>]: The version of the device enrollment configuration
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementdeviceenrollmentconfiguration
#>
function New-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration]
    # The Base Class of Device Enrollment Configuration
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment[]]
    # The list of group assignments for the device configuration profile
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Created date time in UTC of the device enrollment configuration
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the device enrollment configuration
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the device enrollment configuration
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date time in UTC of the device enrollment configuration
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Priority is used when a user exists in multiple groups that are assigned enrollment configuration.
    # Users are subject only to the configuration with the lowest priority value.
    ${Priority},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The version of the device enrollment configuration
    ${Version},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfiguration_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementDeviceEnrollmentConfiguration_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity>: Imported windows autopilot devices.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AssignedUserPrincipalName <String>]: UPN of the user the device will be assigned
  [GroupTag <String>]: Group Tag of the Windows autopilot device.
  [HardwareIdentifier <Byte[]>]: Hardware Blob of the Windows autopilot device.
  [ImportId <String>]: The Import Id of the Windows autopilot device.
  [ProductKey <String>]: Product Key of the Windows autopilot device.
  [SerialNumber <String>]: Serial number of the Windows autopilot device.
  [State <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>]: importedWindowsAutopilotDeviceIdentityState
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
    [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
    [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
    [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).

STATE <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>: importedWindowsAutopilotDeviceIdentityState
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
  [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
  [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
  [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function New-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity]
    # Imported windows autopilot devices.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # UPN of the user the device will be assigned
    ${AssignedUserPrincipalName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for HardwareIdentifier (Hardware Blob of the Windows autopilot device.)
    ${HardwareIdentifierInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The Import Id of the Windows autopilot device.
    ${ImportId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState]
    # importedWindowsAutopilotDeviceIdentityState
    # To construct, see NOTES section for STATE properties and create a hash table.
    ${State},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Create';
            CreateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphWindowsAutopilotDeviceIdentity>: The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AddressableUserName <String>]: Addressable user name.
  [AzureActiveDirectoryDeviceId <String>]: AAD Device ID - to be deprecated
  [DisplayName <String>]: Display Name
  [EnrollmentState <String>]: 
  [GroupTag <String>]: Group Tag of the Windows autopilot device.
  [LastContactedDateTime <DateTime?>]: Intune Last Contacted Date Time of the Windows autopilot device.
  [ManagedDeviceId <String>]: Managed Device ID
  [Manufacturer <String>]: Oem manufacturer of the Windows autopilot device.
  [Model <String>]: Model name of the Windows autopilot device.
  [ProductKey <String>]: Product Key of the Windows autopilot device.
  [PurchaseOrderIdentifier <String>]: Purchase Order Identifier of the Windows autopilot device.
  [ResourceName <String>]: Resource Name.
  [SerialNumber <String>]: Serial number of the Windows autopilot device.
  [SkuNumber <String>]: SKU Number
  [SystemFamily <String>]: System Family
  [UserPrincipalName <String>]: User Principal Name.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/new-mgdevicemanagementwindowautopilotdeviceidentity
#>
function New-MgDeviceManagementWindowAutopilotDeviceIdentity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity]
    # The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Addressable user name.
    ${AddressableUserName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # AAD Device ID - to be deprecated
    ${AzureActiveDirectoryDeviceId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display Name
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EnrollmentState},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Intune Last Contacted Date Time of the Windows autopilot device.
    ${LastContactedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Managed Device ID
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Oem manufacturer of the Windows autopilot device.
    ${Manufacturer},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Model name of the Windows autopilot device.
    ${Model},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Purchase Order Identifier of the Windows autopilot device.
    ${PurchaseOrderIdentifier},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource Name.
    ${ResourceName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # SKU Number
    ${SkuNumber},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # System Family
    ${SystemFamily},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User Principal Name.
    ${UserPrincipalName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementWindowAutopilotDeviceIdentity_Create1';
            CreateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\New-MgDeviceManagementWindowAutopilotDeviceIdentity_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access
.Description
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access

.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementconditionalaccesssetting
#>
function Remove-MgDeviceManagementConditionalAccessSetting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementConditionalAccessSetting_Delete1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function Remove-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of enrollmentConfigurationAssignment
    ${EnrollmentConfigurationAssignmentId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementdeviceenrollmentconfiguration
#>
function Remove-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfiguration_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementDeviceEnrollmentConfiguration_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function Remove-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of importedWindowsAutopilotDeviceIdentity
    ${ImportedWindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/remove-mgdevicemanagementwindowautopilotdeviceidentity
#>
function Remove-MgDeviceManagementWindowAutopilotDeviceIdentity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementWindowAutopilotDeviceIdentity_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Remove-MgDeviceManagementWindowAutopilotDeviceIdentity_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access
.Description
The Exchange on premises conditional access settings.
On premises conditional access will require devices to be both enrolled and compliant for mail access

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphOnPremisesConditionalAccessSettings>: Singleton entity which represents the Exchange OnPremises Conditional Access Settings for a tenant.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Enabled <Boolean?>]: Indicates if on premises conditional access is enabled for this organization
  [ExcludedGroups <String[]>]: User groups that will be exempt by on premises conditional access. All users in these groups will be exempt from the conditional access policy.
  [IncludedGroups <String[]>]: User groups that will be targeted by on premises conditional access. All users in these groups will be required to have mobile device managed and compliant for mail access.
  [OverrideDefaultRule <Boolean?>]: Override the default access rule when allowing a device to ensure access is granted.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementconditionalaccesssetting
#>
function Update-MgDeviceManagementConditionalAccessSetting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnPremisesConditionalAccessSettings]
    # Singleton entity which represents the Exchange OnPremises Conditional Access Settings for a tenant.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if on premises conditional access is enabled for this organization
    ${Enabled},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User groups that will be exempt by on premises conditional access.
    # All users in these groups will be exempt from the conditional access policy.
    ${ExcludedGroups},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User groups that will be targeted by on premises conditional access.
    # All users in these groups will be required to have mobile device managed and compliant for mail access.
    ${IncludedGroups},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Override the default access rule when allowing a device to ensure access is granted.
    ${OverrideDefaultRule},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementConditionalAccessSetting_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementConditionalAccessSetting_UpdateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of group assignments for the device configuration profile
.Description
The list of group assignments for the device configuration profile

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphEnrollmentConfigurationAssignment>: Enrollment Configuration Assignment
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementdeviceenrollmentconfigurationassignment
#>
function Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of enrollmentConfigurationAssignment
    ${EnrollmentConfigurationAssignmentId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment]
    # Enrollment Configuration Assignment
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceAndAppManagementAssignmentTarget]))]
    [System.Collections.Hashtable]
    # Base type for assignment targets.
    ${Target},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfigurationAssignment_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The list of device enrollment configurations
.Description
The list of device enrollment configurations

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ASSIGNMENTS <IMicrosoftGraphEnrollmentConfigurationAssignment[]>: The list of group assignments for the device configuration profile
  [Id <String>]: Read-only.
  [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
    [(Any) <Object>]: This indicates any property can be added to this object.

BODYPARAMETER <IMicrosoftGraphDeviceEnrollmentConfiguration>: The Base Class of Device Enrollment Configuration
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [Assignments <IMicrosoftGraphEnrollmentConfigurationAssignment[]>]: The list of group assignments for the device configuration profile
    [Id <String>]: Read-only.
    [Target <IMicrosoftGraphDeviceAndAppManagementAssignmentTarget>]: Base type for assignment targets.
      [(Any) <Object>]: This indicates any property can be added to this object.
  [CreatedDateTime <DateTime?>]: Created date time in UTC of the device enrollment configuration
  [Description <String>]: The description of the device enrollment configuration
  [DisplayName <String>]: The display name of the device enrollment configuration
  [LastModifiedDateTime <DateTime?>]: Last modified date time in UTC of the device enrollment configuration
  [Priority <Int32?>]: Priority is used when a user exists in multiple groups that are assigned enrollment configuration. Users are subject only to the configuration with the lowest priority value.
  [Version <Int32?>]: The version of the device enrollment configuration

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementdeviceenrollmentconfiguration
#>
function Update-MgDeviceManagementDeviceEnrollmentConfiguration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of deviceEnrollmentConfiguration
    ${DeviceEnrollmentConfigurationId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDeviceEnrollmentConfiguration]
    # The Base Class of Device Enrollment Configuration
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEnrollmentConfigurationAssignment[]]
    # The list of group assignments for the device configuration profile
    # To construct, see NOTES section for ASSIGNMENTS properties and create a hash table.
    ${Assignments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Created date time in UTC of the device enrollment configuration
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the device enrollment configuration
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the device enrollment configuration
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date time in UTC of the device enrollment configuration
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Priority is used when a user exists in multiple groups that are assigned enrollment configuration.
    # Users are subject only to the configuration with the lowest priority value.
    ${Priority},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The version of the device enrollment configuration
    ${Version},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementDeviceEnrollmentConfiguration_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Collection of imported Windows autopilot devices.
.Description
Collection of imported Windows autopilot devices.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity>: Imported windows autopilot devices.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AssignedUserPrincipalName <String>]: UPN of the user the device will be assigned
  [GroupTag <String>]: Group Tag of the Windows autopilot device.
  [HardwareIdentifier <Byte[]>]: Hardware Blob of the Windows autopilot device.
  [ImportId <String>]: The Import Id of the Windows autopilot device.
  [ProductKey <String>]: Product Key of the Windows autopilot device.
  [SerialNumber <String>]: Serial number of the Windows autopilot device.
  [State <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>]: importedWindowsAutopilotDeviceIdentityState
    [(Any) <Object>]: This indicates any property can be added to this object.
    [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
    [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
    [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
    [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState

STATE <IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState>: importedWindowsAutopilotDeviceIdentityState
  [(Any) <Object>]: This indicates any property can be added to this object.
  [DeviceErrorCode <Int32?>]: Device error code reported by Device Directory Service(DDS).
  [DeviceErrorName <String>]: Device error name reported by Device Directory Service(DDS).
  [DeviceImportStatus <String>]: importedWindowsAutopilotDeviceIdentityImportStatus
  [DeviceRegistrationId <String>]: Device Registration ID for successfully added device reported by Device Directory Service(DDS).
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementimportedwindowautopilotdeviceidentity
#>
function Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of importedWindowsAutopilotDeviceIdentity
    ${ImportedWindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentity]
    # Imported windows autopilot devices.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # UPN of the user the device will be assigned
    ${AssignedUserPrincipalName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for HardwareIdentifier (Hardware Blob of the Windows autopilot device.)
    ${HardwareIdentifierInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The Import Id of the Windows autopilot device.
    ${ImportId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphImportedWindowsAutopilotDeviceIdentityState]
    # importedWindowsAutopilotDeviceIdentityState
    # To construct, see NOTES section for STATE properties and create a hash table.
    ${State},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_Update';
            UpdateExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementImportedWindowAutopilotDeviceIdentity_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The Windows autopilot device identities contained collection.
.Description
The Windows autopilot device identities contained collection.

.Inputs
Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODYPARAMETER <IMicrosoftGraphWindowsAutopilotDeviceIdentity>: The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
  [(Any) <Object>]: This indicates any property can be added to this object.
  [Id <String>]: Read-only.
  [AddressableUserName <String>]: Addressable user name.
  [AzureActiveDirectoryDeviceId <String>]: AAD Device ID - to be deprecated
  [DisplayName <String>]: Display Name
  [EnrollmentState <String>]: 
  [GroupTag <String>]: Group Tag of the Windows autopilot device.
  [LastContactedDateTime <DateTime?>]: Intune Last Contacted Date Time of the Windows autopilot device.
  [ManagedDeviceId <String>]: Managed Device ID
  [Manufacturer <String>]: Oem manufacturer of the Windows autopilot device.
  [Model <String>]: Model name of the Windows autopilot device.
  [ProductKey <String>]: Product Key of the Windows autopilot device.
  [PurchaseOrderIdentifier <String>]: Purchase Order Identifier of the Windows autopilot device.
  [ResourceName <String>]: Resource Name.
  [SerialNumber <String>]: Serial number of the Windows autopilot device.
  [SkuNumber <String>]: SKU Number
  [SystemFamily <String>]: System Family
  [UserPrincipalName <String>]: User Principal Name.

INPUTOBJECT <IDeviceManagementEnrolmentIdentity>: Identity Parameter
  [AndroidDeviceOwnerEnrollmentProfileId <String>]: key: id of androidDeviceOwnerEnrollmentProfile
  [AndroidForWorkEnrollmentProfileId <String>]: key: id of androidForWorkEnrollmentProfile
  [AppScopeId <String>]: key: id of appScope
  [AppScopeId1 <String>]: Usage: appScopeId={appScopeId}
  [AppleEnrollmentProfileAssignmentId <String>]: key: id of appleEnrollmentProfileAssignment
  [AppleUserInitiatedEnrollmentProfileId <String>]: key: id of appleUserInitiatedEnrollmentProfile
  [ApprovalId <String>]: key: id of approval
  [ApprovalStepId <String>]: key: id of approvalStep
  [DepOnboardingSettingId <String>]: key: id of depOnboardingSetting
  [DeviceEnrollmentConfigurationId <String>]: key: id of deviceEnrollmentConfiguration
  [DeviceManagementAutopilotEventId <String>]: key: id of deviceManagementAutopilotEvent
  [DeviceManagementAutopilotPolicyStatusDetailId <String>]: key: id of deviceManagementAutopilotPolicyStatusDetail
  [DirectoryScopeId <String>]: Usage: directoryScopeId={directoryScopeId}
  [EnrollmentConfigurationAssignmentId <String>]: key: id of enrollmentConfigurationAssignment
  [EnrollmentProfileId <String>]: key: id of enrollmentProfile
  [ImportedAppleDeviceIdentityId <String>]: key: id of importedAppleDeviceIdentity
  [ImportedDeviceIdentityId <String>]: key: id of importedDeviceIdentity
  [ImportedWindowsAutopilotDeviceIdentityId <String>]: key: id of importedWindowsAutopilotDeviceIdentity
  [On <String>]: Usage: on={on}
  [PrincipalId <String>]: Usage: principalId={principalId}
  [RoleDefinitionId <String>]: Usage: roleDefinitionId={roleDefinitionId}
  [UnifiedRbacResourceActionId <String>]: key: id of unifiedRbacResourceAction
  [UnifiedRbacResourceNamespaceId <String>]: key: id of unifiedRbacResourceNamespace
  [UnifiedRoleAssignmentId <String>]: key: id of unifiedRoleAssignment
  [UnifiedRoleAssignmentMultipleId <String>]: key: id of unifiedRoleAssignmentMultiple
  [UnifiedRoleAssignmentScheduleId <String>]: key: id of unifiedRoleAssignmentSchedule
  [UnifiedRoleAssignmentScheduleInstanceId <String>]: key: id of unifiedRoleAssignmentScheduleInstance
  [UnifiedRoleAssignmentScheduleRequestId <String>]: key: id of unifiedRoleAssignmentScheduleRequest
  [UnifiedRoleDefinitionId <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleDefinitionId1 <String>]: key: id of unifiedRoleDefinition
  [UnifiedRoleEligibilityScheduleId <String>]: key: id of unifiedRoleEligibilitySchedule
  [UnifiedRoleEligibilityScheduleInstanceId <String>]: key: id of unifiedRoleEligibilityScheduleInstance
  [UnifiedRoleEligibilityScheduleRequestId <String>]: key: id of unifiedRoleEligibilityScheduleRequest
  [WindowsAutopilotDeploymentProfileAssignmentId <String>]: key: id of windowsAutopilotDeploymentProfileAssignment
  [WindowsAutopilotDeploymentProfileId <String>]: key: id of windowsAutopilotDeploymentProfile
  [WindowsAutopilotDeviceIdentityId <String>]: key: id of windowsAutopilotDeviceIdentity
  [WindowsFeatureUpdateProfileAssignmentId <String>]: key: id of windowsFeatureUpdateProfileAssignment
  [WindowsFeatureUpdateProfileId <String>]: key: id of windowsFeatureUpdateProfile
  [WindowsUpdateStateId <String>]: key: id of windowsUpdateState
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgdevicemanagementwindowautopilotdeviceidentity
#>
function Update-MgDeviceManagementWindowAutopilotDeviceIdentity {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsAutopilotDeviceIdentity
    ${WindowsAutopilotDeviceIdentityId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IDeviceManagementEnrolmentIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphWindowsAutopilotDeviceIdentity]
    # The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
    # To construct, see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Addressable user name.
    ${AddressableUserName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # AAD Device ID - to be deprecated
    ${AzureActiveDirectoryDeviceId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display Name
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EnrollmentState},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Group Tag of the Windows autopilot device.
    ${GroupTag},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Read-only.
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Intune Last Contacted Date Time of the Windows autopilot device.
    ${LastContactedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Managed Device ID
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Oem manufacturer of the Windows autopilot device.
    ${Manufacturer},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Model name of the Windows autopilot device.
    ${Model},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Product Key of the Windows autopilot device.
    ${ProductKey},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Purchase Order Identifier of the Windows autopilot device.
    ${PurchaseOrderIdentifier},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource Name.
    ${ResourceName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Serial number of the Windows autopilot device.
    ${SerialNumber},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # SKU Number
    ${SkuNumber},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # System Family
    ${SystemFamily},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # User Principal Name.
    ${UserPrincipalName},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgDeviceManagementWindowAutopilotDeviceIdentity_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update roleManagement
.Description
Update roleManagement

.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.devicemanagement.enrolment/update-mgrolemanagement
#>
function Update-MgRoleManagement {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRoleManagement]))]
    [System.Collections.Hashtable]
    # roleManagement
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagement_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.DeviceManagement.Enrolment.private\Update-MgRoleManagement_UpdateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# SIG # Begin signature block
# MIIjnwYJKoZIhvcNAQcCoIIjkDCCI4wCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCIjPhLIEIMxfsG
# CNL99hyGaRcq1KACCZ5APBWMqpjQ/6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVdDCCFXACAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgQCQFbnb6
# Pn0uR04x9F3mOo0pNE23Cf6peIY8l9YxreQwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBHD0giIBvSBZk1Ii9W699WiJr4MANvuSCkHwin+2Rz
# wHLu4f4zA4zXB8LupmvFukdoY9gn87vAxZAyN7PVToJKXEijhBV0dWKPuG33qMN9
# GtV4WVRCztSB4k6F6l2HkO4I1NIuV8eSdVZBN1wsEfX6/iVg3GvLsTCYJM0jYNxf
# 0VsFDTPjYRFRHCSxo2l2VVpSR+DK2O+lgAqnhCTHe/VxMjs9GfXUGPyANU/YM6Dv
# Ev+90tVgsHorwNz4tah/qteMf/VKSuOKUAaFK8U+w8QoQX5ganT5lXuBtgmhbXJ4
# yPk/9/3BKvvdOHUKFwmitNJPW7ZTG/NpbbsVJ3Py2UOEoYIS/jCCEvoGCisGAQQB
# gjcDAwExghLqMIIS5gYJKoZIhvcNAQcCoIIS1zCCEtMCAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIJ2NxBL3hkeS9ms/Gm5GgdIo9srwiEkNYZVLbFXm
# uuM+AgZhMTC0q/EYEzIwMjEwOTEwMDYwMjAwLjY4MVowBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2Wggg5NMIIE+TCCA+GgAwIBAgITMwAAATqNjTH3d0lJ
# wgAAAAABOjANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMDEwMTUxNzI4MjJaFw0yMjAxMTIxNzI4MjJaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjhENDEtNEJGNy1CM0I3MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzl8k518P
# lz8JTIXYn/O9OakqcWqdJ8ZXJhAks9hyLB8+ANW7Zngb1t7iw7TmgeooOwMnbhCQ
# QH14UwWd8hQFWexKqVpcIFnY3b15+PYmgVeQ4XKfWJ3PPMjTiXu73epXHj9XX7mh
# S2IVqwEvDOudOI3yQL8D8OOG24b+10zDDEyN5wvZ5A1Wcvl2eQhCG61GeHNaXvXO
# loTQblVFbMWOmGviHvgRlRhRjgNmuv1J2y6fQFtiEw0pdXKCQG68xQlBhcu4Ln+b
# YL4HoeT2mrtkpHEyDZ+frr+Ka/zUDP3BscHkKdkNGOODfvJdWHaV0Wzr1wnPuUgt
# ObfnBO0oSjIpBQIDAQABo4IBGzCCARcwHQYDVR0OBBYEFBRWoJ8WXxJrpslvHHWs
# rQmFRfPLMB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRP
# ME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
# Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEww
# SgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMv
# TWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0l
# BAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQADggEBAF435D6kAS2jeAJ8BG1K
# Tm5Az0jpbdjpqSvMLt7fOVraAEHldgk04BKcTmhzjbTXsjwgCMMCS+jX4Toqi0cn
# zcSoD2LphZA98DXeH6lRH7qQdXbHgx0/vbq0YyVkltSTMv1jzzI75Z5dhpvc4Uwn
# 4Fb6CCaF2/+r7Rr0j+2DGCwl8aWqvQqzhCJ/o7cNoYUfJ4WSCHs1OsjgMmWTmglu
# PIxt3kV8iLZl2IZgyr5cNOiNiTraFDq7hxI16oDsoW0EQKCV84nV1wWSWe1SiAKI
# wr5BtqYwJ+hlocPw5qehWbBiTLntcLrwKdAbwthFr1DHf3RYwFoDzyNtKSB/TJsB
# 2bMwggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNy
# b3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0xMDA3MDEy
# MTM2NTVaFw0yNTA3MDEyMTQ2NTVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAy
# MDEwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqR0NvHcRijog7PwT
# l/X6f2mUa3RUENWlCgCChfvtfGhLLF/Fw+Vhwna3PmYrW/AVUycEMR9BGxqVHc4J
# E458YTBZsTBED/FgiIRUQwzXTbg4CLNC3ZOs1nMwVyaCo0UN0Or1R4HNvyRgMlhg
# RvJYR4YyhB50YWeRX4FUsc+TTJLBxKZd0WETbijGGvmGgLvfYfxGwScdJGcSchoh
# iq9LZIlQYrFd/XcfPfBXday9ikJNQFHRD5wGPmd/9WbAA5ZEfu/QS/1u5ZrKsajy
# eioKMfDaTgaRtogINeh4HLDpmc085y9Euqf03GS9pAHBIAmTeM38vMDJRF1eFpwB
# BU8iTQIDAQABo4IB5jCCAeIwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFNVj
# OlyKMZDzQ3t8RhvFM2hahW1VMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsG
# A1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJc
# YmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9z
# b2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIz
# LmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0
# MIGgBgNVHSABAf8EgZUwgZIwgY8GCSsGAQQBgjcuAzCBgTA9BggrBgEFBQcCARYx
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL1BLSS9kb2NzL0NQUy9kZWZhdWx0Lmh0
# bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBhAGwAXwBQAG8AbABpAGMAeQBfAFMA
# dABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEAB+aIUQ3ixuCY
# P4FxAz2do6Ehb7Prpsz1Mb7PBeKp/vpXbRkws8LFZslq3/Xn8Hi9x6ieJeP5vO1r
# VFcIK1GCRBL7uVOMzPRgEop2zEBAQZvcXBf/XPleFzWYJFZLdO9CEMivv3/Gf/I3
# fVo/HPKZeUqRUgCvOA8X9S95gWXZqbVr5MfO9sp6AG9LMEQkIjzP7QOllo9ZKby2
# /QThcJ8ySif9Va8v/rbljjO7Yl+a21dA6fHOmWaQjP9qYn/dxUoLkSbiOewZSnFj
# nXshbcOco6I8+n99lmqQeKZt0uGc+R38ONiU9MalCpaGpL2eGq4EQoO4tYCbIjgg
# tSXlZOz39L9+Y1klD3ouOVd2onGqBooPiRa6YacRy5rYDkeagMXQzafQ732D8OE7
# cQnfXXSYIghh2rBQHm+98eEA3+cxB6STOvdlR3jo+KhIq/fecn5ha293qYHLpwms
# ObvsxsvYgrRyzR30uIUBHoD7G4kqVDmyW9rIDVWZeodzOwjmmC3qjeAzLhIp9cAv
# VCch98isTtoouLGp25ayp0Kiyc8ZQU3ghvkqmqMRZjDTu3QyS99je/WZii8bxyGv
# WbWu3EQ8l1Bx16HSxVXjad5XwdHeMMD9zOZN+w2/XU/pnR4ZOC+8z1gFLu8NoFA1
# 2u8JJxzVs341Hgi62jbb01+P3nSISRKhggLXMIICQAIBATCCAQChgdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAAclkdn1j1gXgdyvYj41
# B8rkNZ4IoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJ
# KoZIhvcNAQEFBQACBQDk5OloMCIYDzIwMjEwOTEwMDQxMzI4WhgPMjAyMTA5MTEw
# NDEzMjhaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOTk6WgCAQAwCgIBAAICMdMC
# Af8wBwIBAAICETswCgIFAOTmOugCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYB
# BAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOB
# gQCY+lqhGAj6pzL9l4kR1ySxtEhrgDuUWhYny+G3OUp/Tkfx0vIBN0oBj2KiuwWm
# PwaxT7v09TFZaJvq13VK4E4OmTnmga4A4KlAKeYnlGQ5q3hn81s6ysOG25u/aimW
# N2g7J0w7IDN70rBtCfJlsgkAwj9BlQ9Pna0iN9VcPBsJYzGCAw0wggMJAgEBMIGT
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABOo2NMfd3SUnCAAAA
# AAE6MA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQ
# AQQwLwYJKoZIhvcNAQkEMSIEIKpmexnoY+BILwKgxcbgfQ+Rp7UlJU0U9fH1+7gS
# N1XyMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgn6/QhAepLF/7Bdsvfu8G
# OT+ihL9c4cgo5Nf1aUN8tG0wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMAITMwAAATqNjTH3d0lJwgAAAAABOjAiBCBKIWhbA8bJy621pyDSieai
# OVc+rEVMRub5IXVy4HdiNzANBgkqhkiG9w0BAQsFAASCAQCIuVvhEDd8cTY2Qbq2
# U1QsgVz8eziw3rczqLA6AfkNTMfI+QqPLB0m0UhrXS/GKwYsLsDscDBxDuafsdi3
# VS0eGVy1A42SSgF2pgcjWMndlCA5wDchjU2tLXI3kMeDZQcXELMLPDFA+q2w7U2a
# Punt0lIWXUEEbdKYQtAvcJj5aN2uh1h/WiBVndthj7PuecSE3c52mXRMWT3DIbKU
# 5cZnl3DFGWHGTUGfOQmxaGRprz9gop9G3DMteedJCqR59jZh3xUz3H1220ZdL4gM
# VQFNA+sFhnxggOqWi3xEjulNVOhDXCVIr+zkkKqEYpooGFyhud4hf/6jsMG9Pyes
# U0Fu
# SIG # End signature block
