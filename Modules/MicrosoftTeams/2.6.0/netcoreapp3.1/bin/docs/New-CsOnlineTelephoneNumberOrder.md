---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/new-csonlinetelephonenumberorder
schema: 2.0.0
---

# New-CsOnlineTelephoneNumberOrder

## SYNOPSIS


## SYNTAX

### CreateExpanded (Default)
```
New-CsOnlineTelephoneNumberOrder -Country <String> -Description <String> -Name <String> -NumberType <String>
 -Quantity <Int32> [-AreaCode <String>] [-CivicAddressId <String>] [-NumberPrefix <String>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Create
```
New-CsOnlineTelephoneNumberOrder -Body <ISkypeTelephoneNumberMgmtCmdletCreateSearchOrderRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
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

### -AreaCode
Telephone number area code for AreaCodeSelection search.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
CmdletCreateSearchOrderRequest
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ISkypeTelephoneNumberMgmtCmdletCreateSearchOrderRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CivicAddressId
CivicAddressId when RequiresCivicAddress is true.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Country
Telephone number country.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Search order description.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Search order name.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NumberPrefix
Telephone number prefix for Prefix search.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NumberType
Telephone number type.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Quantity
Number of telephone numbers to acquire.

```yaml
Type: System.Int32
Parameter Sets: CreateExpanded
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

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ISkypeTelephoneNumberMgmtCmdletCreateSearchOrderRequest

## OUTPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ISkypeTelephoneNumberMgmtErrorResponseDetails

### System.String

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <ISkypeTelephoneNumberMgmtCmdletCreateSearchOrderRequest>: CmdletCreateSearchOrderRequest
  - `Country <String>`: Telephone number country.
  - `Description <String>`: Search order description.
  - `Name <String>`: Search order name.
  - `NumberType <String>`: Telephone number type.
  - `Quantity <Int32>`: Number of telephone numbers to acquire.
  - `[AreaCode <String>]`: Telephone number area code for AreaCodeSelection search.
  - `[CivicAddressId <String>]`: CivicAddressId when RequiresCivicAddress is true.
  - `[NumberPrefix <String>]`: Telephone number prefix for Prefix search.

## RELATED LINKS

