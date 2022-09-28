---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/get-csteamsshiftsconnectioninstance
schema: 2.0.0
---

# Get-CsTeamsShiftsConnectionInstance

## SYNOPSIS
Connector instances marked for deletion are excluded.

## SYNTAX

### Get (Default)
```
Get-CsTeamsShiftsConnectionInstance [<CommonParameters>]
```

### Get1
```
Get-CsTeamsShiftsConnectionInstance -ConnectorInstanceId <String> [<CommonParameters>]
```

### GetViaIdentity
```
Get-CsTeamsShiftsConnectionInstance -InputObject <IConfigApiBasedCmdletsIdentity> [<CommonParameters>]
```

## DESCRIPTION
Connector instances marked for deletion are excluded.

## EXAMPLES

### Example 1: Get connection instance in list view
```powershell
PS C:\> Get-CsTeamsShiftsConnectionInstance | Format-List

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : ae319a6b-f0a7-491e-9bc1-3415bf8a1621
EnabledConnectorScenario                 : {Shift, TimeOffRequest}
EnabledWfiScenario                       : {Shift}
Etag                                     : "0000715c-0000-0700-0000-60b94c0f0000"
Id                                       : WCI-3f37d48a-95aa-45e3-99be-86d99c5f1ace
Name                                     : Maosha Connector instance1
SyncFrequencyInMin                       : 60
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8562677a-996c-4f21-9935-723ba12a8d64

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : b862c9A7-416A-43aA-4Eac-db0C56eCDddC
EnabledConnectorScenario                 : {SwapRequest, OpenShiftRequest}
EnabledWfiScenario                       : {}
Etag                                     : "30013a2e-0000-0700-0000-60b4d1940000"
Id                                       : WCI-c4b4266e-769a-4403-a87d-563d26d3c7d9
Name                                     : Leo s Connector Instance
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 0c1141fa-1b17-43cc-a417-34c156b99779
EnabledConnectorScenario                 : {Shift, SwapRequest, UserShiftPreferences, OpenShift...}
EnabledWfiScenario                       : {Shift, SwapRequest, UserShiftPreferences, OpenShift...}
Etag                                     : "0000ce4b-0000-0700-0000-60b905b20000"
Id                                       : WCI-54d3d260-f171-4106-8f1d-3247a5b43486
Name                                     : Guchuan instantance3
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 0c1141fa-1b17-43cc-a417-34c156b99779
EnabledConnectorScenario                 : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
EnabledWfiScenario                       : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
Etag                                     : "0000605c-0000-0700-0000-60b94af20000"
Id                                       : WCI-85e864f2-3a75-43fa-ac3e-6ef571a3e5d9
Name                                     : Guchuan instance5
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 0c1141fa-1b17-43cc-a417-34c156b99779
EnabledConnectorScenario                 : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
EnabledWfiScenario                       : {Shift, SwapRequest, OpenShift, OpenShiftRequest...}
Etag                                     : "00009f5e-0000-0700-0000-60b951c10000"
Id                                       : WCI-d1addd70-2684-4723-b8f2-7fa2230648c9
Name                                     : Guchuan instance6
SyncFrequencyInMin                       : 10
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 910ba867-3349-4bff-bc9f-6460ae8c9761
EnabledConnectorScenario                 : {Shift, OpenShift, TimeOff}
EnabledWfiScenario                       : {Shift, OpenShift, TimeOff}
Etag                                     : "0000a085-0000-0700-0000-60ba2cb50000"
Id                                       : WCI-6e4bd9f6-5617-4012-82eb-6dd51bf30bfa
Name                                     : Nialls Test Connector Instance
SyncFrequencyInMin                       : 180
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88

ConnectorId                              : 6A51B888-FF44-4FEA-82E1-839401E9CD74
ConnectorName                            : Blue Yonder
ConnectorSpecificSettingAdminApiUrl      : https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2
ConnectorSpecificSettingCookieAuthUrl    : https://nehstdevwfm02.replgroup.com/retail/data/login
ConnectorSpecificSettingEssApiUrl        : https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1
ConnectorSpecificSettingFederatedAuthUrl : https://nehstdevfas01.replgroup.com/retail/data/login
ConnectorSpecificSettingRetailWebApiUrl  : https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1
ConnectorSpecificSettingSiteManagerUrl   : https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2
DesignatedActorId                        : 656c81a0-21cf-461c-ac83-07d0023bd62b
EnabledConnectorScenario                 : {Shift, SwapRequest, UserShiftPreferences, OpenShift...}
EnabledWfiScenario                       : {SwapRequest, OpenShift, OpenShiftRequest, OfferShiftRequest...}
Etag                                     : "0e00d46a-0000-0700-0000-60babcca0000"
Id                                       : WCI-2302814d-f316-4d80-91cc-11508c24d51c
Name                                     : Sushruth Instance
SyncFrequencyInMin                       : 20
TenantId                                 : b9a3c751-d652-47f0-b612-9dffc7a4e800
WorkforceIntegrationId                   : WFI_8dbddbb0-6cba-4861-a541-192320cc0e88
```

Get the detail of a connection instance of ID WCI-d1addd70-2684-4723-b8f2-7fa2230648c9

## PARAMETERS

### -ConnectorInstanceId
Connector Instance Id

```yaml
Type: System.String
Parameter Sets: Get1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity
Parameter Sets: GetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity

## OUTPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectorInstanceResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IConfigApiBasedCmdletsIdentity>: Identity Parameter
  - `[AppId <String>]`: 
  - `[AudioFileId <String>]`: 
  - `[Bssid <String>]`: 
  - `[ChassisId <String>]`: 
  - `[CivicAddressId <String>]`: 
  - `[ConnectorInstanceId <String>]`: Connector Instance Id
  - `[Country <String>]`: 
  - `[EndpointId <String>]`: Application instance Id.
  - `[GroupId <String>]`: The ID of a group whose policy assignments will be returned.
  - `[Id <String>]`: 
  - `[Identity <String>]`: 
  - `[Locale <String>]`: 
  - `[LocationId <String>]`: Location id.
  - `[OdataId <String>]`: A composite URI of a template.
  - `[OperationId <String>]`: The ID of a batch policy assignment operation.
  - `[OrderId <String>]`: 
  - `[PackageName <String>]`: The name of a specific policy package
  - `[PolicyType <String>]`: The policy type for which group policy assignments will be returned.
  - `[PortId <String>]`: 
  - `[PublicTemplateLocale <String>]`: Language and country code for localization of publicly available templates.
  - `[SubnetId <String>]`: 
  - `[TeamId <String>]`: Team Id
  - `[UserId <String>]`: UserId. Supports Guid. Eventually UPN and SIP.
  - `[Version <String>]`: 
  - `[WfmTeamId <String>]`: Team Id

## RELATED LINKS

