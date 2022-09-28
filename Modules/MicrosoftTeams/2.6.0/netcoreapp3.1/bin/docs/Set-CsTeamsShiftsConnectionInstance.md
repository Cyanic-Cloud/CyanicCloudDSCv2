---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/set-csteamsshiftsconnectioninstance
schema: 2.0.0
---

# Set-CsTeamsShiftsConnectionInstance

## SYNOPSIS
Updates a connector instance.

## SYNTAX

### SetExpanded (Default)
```
Set-CsTeamsShiftsConnectionInstance -ConnectorInstanceId <String> -IfMatch <String> -ConnectorId <String>
 -ConnectorSpecificSettingAdminApiUrl <String> -ConnectorSpecificSettingCookieAuthUrl <String>
 -ConnectorSpecificSettingEssApiUrl <String> -ConnectorSpecificSettingFederatedAuthUrl <String>
 -ConnectorSpecificSettingLoginPwd <String> -ConnectorSpecificSettingLoginUserName <String>
 -ConnectorSpecificSettingRetailWebApiUrl <String> -ConnectorSpecificSettingSiteManagerUrl <String>
 -DesignatedActorId <String> -EnabledConnectorScenario <String[]> -EnabledWfiScenario <String[]>
 -Name <String> -SyncFrequencyInMin <Int32> [-WorkforceIntegrationId <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Set
```
Set-CsTeamsShiftsConnectionInstance -ConnectorInstanceId <String> -IfMatch <String>
 -Body <IUpdateConnectorInstanceRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### SetViaIdentity
```
Set-CsTeamsShiftsConnectionInstance -InputObject <IConfigApiBasedCmdletsIdentity> -IfMatch <String>
 -Body <IUpdateConnectorInstanceRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### SetViaIdentityExpanded
```
Set-CsTeamsShiftsConnectionInstance -InputObject <IConfigApiBasedCmdletsIdentity> -IfMatch <String>
 -ConnectorId <String> -ConnectorSpecificSettingAdminApiUrl <String>
 -ConnectorSpecificSettingCookieAuthUrl <String> -ConnectorSpecificSettingEssApiUrl <String>
 -ConnectorSpecificSettingFederatedAuthUrl <String> -ConnectorSpecificSettingLoginPwd <String>
 -ConnectorSpecificSettingLoginUserName <String> -ConnectorSpecificSettingRetailWebApiUrl <String>
 -ConnectorSpecificSettingSiteManagerUrl <String> -DesignatedActorId <String>
 -EnabledConnectorScenario <String[]> -EnabledWfiScenario <String[]> -Name <String>
 -SyncFrequencyInMin <Int32> [-WorkforceIntegrationId <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Updates a connector instance.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> $result = Set-CsTeamsShiftsConnectionInstance -ConnectorId "6A51B888-FF44-4FEA-82E1-839401E9CD74" -ConnectorInstanceId $InstanceId -ConnectorSpecificSettingAdminApiUrl "https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2" -ConnectorSpecificSettingCookieAuthUrl "https://nehstdevwfm02.replgroup.com/retail/data/login" -ConnectorSpecificSettingEssApiUrl "https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1" -ConnectorSpecificSettingFederatedAuthUrl "https://nehstdevfas01.replgroup.com/retail/data/login" -ConnectorSpecificSettingLoginPwd $plainPwd -ConnectorSpecificSettingLoginUserName $WfmUserName -ConnectorSpecificSettingRetailWebApiUrl "https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1" -ConnectorSpecificSettingSiteManagerUrl "https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2" -DesignatedActorId "0c1141fa-1b17-43cc-a417-34c156b99779" -EnabledConnectorScenario "shift", "swapRequest", "openShift", "openShiftRequest", "timeOff", "timeOffRequest" -EnabledWfiScenario "shift", "swapRequest", "openShift", "openShiftRequest", "timeOff", "timeOffRequest" -Name $UpdatedInstanceName -SyncFrequencyInMin 20 -IfMatch $Etag
PS C:\> $result

{
    "id": "WCI-45500ca4-b392-4f0c-8703-3618fc6ddc9f",
    "tenantId": "b9a3c751-d652-47f0-b612-9dffc7a4e800",
    "name": "updated instance",
    "connector": {
        "id": "6A51B888-FF44-4FEA-82E1-839401E9CD74",
        "name": "Blue Yonder"
    },
    "connectorSpecificSettings": {
        "adminApiUrl ": "https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2",
        "siteManagerUrl": "https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2",
        "essApiUrl": "https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1",
        "retailWebApiUrl": "https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1",
        "cookieAuthUrl": "https://nehstdevwfm02.replgroup.com/retail/data/login",
        "federatedAuthUrl": "https://nehstdevfas01.replgroup.com/retail/data/login"
    },
    "enabledConnectorScenarios": [ "shift", "swapRequest", "openShift", "openShiftRequest", "timeOff", "timeOffRequest"  ],
    "workforceIntegrationId": "WFI_8dbddbb0-6cba-4861-a541-192320cc0e88",
    "enabledWfiScenarios": [ "shift", "swapRequest", "openShift", "openShiftRequest", "timeOff", "timeOffRequest"   ],
    "syncFrequencyInMin": 10,
    "designatedActorId": "928811a9-e74b-4ff0-afe8-ff9dbe824e7f",
    "etag": "\"0a005fd6-0000-0d00-0000-60a76dbf0000\""
}
```

Returns the object of updated connection instance

## PARAMETERS

### -Body
Update Connector Instance Request.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUpdateConnectorInstanceRequest
Parameter Sets: Set, SetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ConnectorId
The connector id.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorInstanceId
Connector Instance Id

```yaml
Type: System.String
Parameter Sets: Set, SetExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingAdminApiUrl
The admin api url.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingCookieAuthUrl
The cookie Auth url.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingEssApiUrl
The ess api url.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingFederatedAuthUrl
The federated Auth url.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingLoginPwd
The login password.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingLoginUserName
The login username.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingRetailWebApiUrl
The retail web api url.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingSiteManagerUrl
The site manager url.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DesignatedActorId
Gets or sets the designated actor id that App acts as for Shifts Graph Api calls.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnabledConnectorScenario
The connector enabled scenarios that are synced from WFM system to Shifts in MS Teams.

```yaml
Type: System.String[]
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnabledWfiScenario
The WFI enabled scenarios that are synced from Shifts in MS Teams to WFM system.

```yaml
Type: System.String[]
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IfMatch
ETag value

```yaml
Type: System.String
Parameter Sets: (All)
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
Parameter Sets: SetViaIdentity, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
The connector instance name.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SyncFrequencyInMin
The sync frequency in minutes.

```yaml
Type: System.Int32
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkforceIntegrationId
The Workforce integration id.

```yaml
Type: System.String
Parameter Sets: SetExpanded, SetViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConfigApiBasedCmdletsIdentity

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUpdateConnectorInstanceRequest

## OUTPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectorInstanceResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <IUpdateConnectorInstanceRequest>: Update Connector Instance Request.
  - `ConnectorId <String>`: The connector id.
  - `ConnectorSpecificSettingAdminApiUrl <String>`: The admin api url.
  - `ConnectorSpecificSettingCookieAuthUrl <String>`: The cookie Auth url.
  - `ConnectorSpecificSettingEssApiUrl <String>`: The ess api url.
  - `ConnectorSpecificSettingFederatedAuthUrl <String>`: The federated Auth url.
  - `ConnectorSpecificSettingLoginPwd <String>`: The login password.
  - `ConnectorSpecificSettingLoginUserName <String>`: The login username.
  - `ConnectorSpecificSettingRetailWebApiUrl <String>`: The retail web api url.
  - `ConnectorSpecificSettingSiteManagerUrl <String>`: The site manager url.
  - `DesignatedActorId <String>`: Gets or sets the designated actor id that App acts as for Shifts Graph Api calls.
  - `EnabledConnectorScenario <String[]>`: The connector enabled scenarios that are synced from WFM system to Shifts in MS Teams.
  - `EnabledWfiScenario <String[]>`: The WFI enabled scenarios that are synced from Shifts in MS Teams to WFM system.
  - `Name <String>`: The connector instance name.
  - `SyncFrequencyInMin <Int32>`: The sync frequency in minutes.
  - `[WorkforceIntegrationId <String>]`: The Workforce integration id.

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

