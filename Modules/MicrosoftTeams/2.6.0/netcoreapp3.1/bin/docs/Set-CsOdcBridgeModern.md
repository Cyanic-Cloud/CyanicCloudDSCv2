---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/set-csodcbridgemodern
schema: 2.0.0
---

# Set-CsOdcBridgeModern

## SYNOPSIS


## SYNTAX

```
Set-CsOdcBridgeModern [-AsJob] [-DefaultServiceNumber <String>] [-DomainController <Object>] [-Force]
 [-Identity <String>] [-Instance <IConferencingBridge>] [-Name <String>] [-SetDefault] [<CommonParameters>]
```

## DESCRIPTION


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

### -AsJob


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

### -DefaultServiceNumber


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DomainController


```yaml
Type: System.Object
Parameter Sets: (All)
Aliases: DC

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force


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

### -Identity


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Instance
To construct, see NOTES section for INSTANCE properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConferencingBridge
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SetDefault


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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConferencingBridge

## OUTPUTS

### System.Object

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INSTANCE <IConferencingBridge>: 
  - `[DefaultServiceNumber <IConferencingServiceNumber>]`: Class representing ConferencingServiceNumber.
    - `[BridgeId <String>]`: Gets or sets the unique identifier of the Bridge that this ServiceNumber belongs to.
    - `[City <String>]`: Gets or sets the Geocode where the ServiceNumber is intended to be used.
    - `[IsShared <Boolean?>]`: Gets or sets a value indicating whether the number is shared between multiple tenants. If this is the case         then tenant admins will be unable to edit the number.
    - `[Number <String>]`: Gets or sets the 11 digit number identifying the ServiceNumber.
    - `[PrimaryLanguage <String>]`: Gets or sets the primary language of the ServiceNumber. e.g.: "en-US".
    - `[SecondaryLanguages <String[]>]`: Gets or sets the list of secondary languages of the ServiceNumber. e.g.: "fr-FR","en-GB","en-IN".
    - `[Type <String>]`: Gets or sets defines the number type Toll/Toll-Free.
  - `[Identity <String>]`: Gets or sets the Bridge Id.
  - `[IsDefault <Boolean?>]`: Gets or sets a value indicating whether gets or sets Whether this bridge is the default bridge for the tenant or not.
  - `[IsShared <Boolean?>]`: Gets or sets whether or not this bridge is shared between tenants.
  - `[Name <String>]`: Gets or sets the name of the Bridge.
  - `[Region <String>]`: Gets or sets the region the bridge is hosted in.
  - `[ServiceNumbers <IConferencingServiceNumber[]>]`: Gets or sets the list of service numbers associated with the bridge.

## RELATED LINKS

