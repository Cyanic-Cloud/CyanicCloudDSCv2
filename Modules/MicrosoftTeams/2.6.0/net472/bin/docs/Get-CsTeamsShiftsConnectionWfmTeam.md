---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/get-csteamsshiftsconnectionwfmteam
schema: 2.0.0
---

# Get-CsTeamsShiftsConnectionWfmTeam

## SYNOPSIS
Gets the list of WFM teams for connector instance.

## SYNTAX

### Get (Default)
```
Get-CsTeamsShiftsConnectionWfmTeam -ConnectorInstanceId <String> [<CommonParameters>]
```

### GetViaIdentity
```
Get-CsTeamsShiftsConnectionWfmTeam -InputObject <IConfigApiBasedCmdletsIdentity> [<CommonParameters>]
```

## DESCRIPTION
Gets the list of WFM teams for connector instance.

## EXAMPLES

### Example 1: Get the list of WFM team
```powershell
PS C:\> Get-CsTeamsShiftsConnectionWfmTeam -ConnectorInstanceId WCI-4c231dd2-4451-45bd-8eea-bd68b40bab8b

Id      Name
--      ----
1000105 0002 - Bucktown
1000106 0003 - West Town
1000107 0005 - Old Town
1000108 0004 - River North
1000109 0001 - Wicker Park
1000111 2055
1000112 2056
1000114 1004
1000115 1003
1000116 1002
1000122 0010
1000124 0300
1000125 1000
1000126 4500
1000128 0006 - Microsoft 1
1000129 SBJ_Test
```

Returns the list of WFM team

## PARAMETERS

### -ConnectorInstanceId
Connector Instance Id

```yaml
Type: System.String
Parameter Sets: Get
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

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IWfmTeam

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

