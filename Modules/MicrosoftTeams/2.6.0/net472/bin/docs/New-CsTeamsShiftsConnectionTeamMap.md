---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/new-csteamsshiftsconnectionteammap
schema: 2.0.0
---

# New-CsTeamsShiftsConnectionTeamMap

## SYNOPSIS
Connects AAD and WFM team.

## SYNTAX

### SetExpanded (Default)
```
New-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId <String> -TeamId <String> -TimeZone <String>
 -WfmTeamId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Set
```
New-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId <String> -TeamId <String>
 -Body <IConnectAadWfmTeamRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### SetViaIdentity
```
New-CsTeamsShiftsConnectionTeamMap -InputObject <IConfigApiBasedCmdletsIdentity>
 -Body <IConnectAadWfmTeamRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### SetViaIdentityExpanded
```
New-CsTeamsShiftsConnectionTeamMap -InputObject <IConfigApiBasedCmdletsIdentity> -TimeZone <String>
 -WfmTeamId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Connects AAD and WFM team.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> New-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId WCI-4c231dd2-4451-45bd-8eea-bd68b40bab8b -TeamId 30b625bd-f0f7-4d5c-8793-9ccef5a63119 -TimeZone "America/Los_Angeles" -WfmTeamId "1000107"

TeamId                               TeamName WfmTeamId WfmTeamName
------                               -------- --------- -----------
30b625bd-f0f7-4d5c-8793-9ccef5a63119          1000107
```

Connects a Teams team and a WFM team

## PARAMETERS

### -Body
Connect Aad Wfm Team Request
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectAadWfmTeamRequest
Parameter Sets: Set, SetViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### -TeamId
Team Id

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

### -TimeZone
Team time zone.

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

### -WfmTeamId
The WFM team id.

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

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectAadWfmTeamRequest

## OUTPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ITeamConnectResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <IConnectAadWfmTeamRequest>: Connect Aad Wfm Team Request
  - `TimeZone <String>`: Team time zone.
  - `WfmTeamId <String>`: The WFM team id.

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

