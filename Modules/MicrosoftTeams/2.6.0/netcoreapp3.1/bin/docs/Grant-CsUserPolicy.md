---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/grant-csuserpolicy
schema: 2.0.0
---

# Grant-CsUserPolicy

## SYNOPSIS
Update single policy of a user

## SYNTAX

### GrantExpanded (Default)
```
Grant-CsUserPolicy -Identity <String> -PolicyType <String> [-AdditionalParameters <Hashtable>]
 [-PolicyName <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### GrantViaIdentity
```
Grant-CsUserPolicy -InputObject <IConfigApiBasedCmdletsIdentity> -Body <ISingleGrantUserRequest> [-PassThru]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### GrantViaIdentityExpanded
```
Grant-CsUserPolicy -InputObject <IConfigApiBasedCmdletsIdentity> [-AdditionalParameters <Hashtable>]
 [-PolicyName <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update single policy of a user

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -AdditionalParameters
Dictionary of \<any\>

```yaml
Type: System.Collections.Hashtable
Parameter Sets: GrantExpanded, GrantViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ISingleGrantUserRequest
Parameter Sets: GrantViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Identity
User Id

```yaml
Type: System.String
Parameter Sets: GrantExpanded
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
Parameter Sets: GrantViaIdentity, GrantViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
Returns true when the command succeeds

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyName
.

```yaml
Type: System.String
Parameter Sets: GrantExpanded, GrantViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyType
Policy Type

```yaml
Type: System.String
Parameter Sets: GrantExpanded
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

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ISingleGrantUserRequest

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <ISingleGrantUserRequest>: .
  - `[AdditionalParameter <ISingleGrantUserRequestAdditionalParameters>]`: Dictionary of <any>
    - `[(Any) <Object>]`: This indicates any property can be added to this object.
  - `[PolicyName <String>]`: 

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

