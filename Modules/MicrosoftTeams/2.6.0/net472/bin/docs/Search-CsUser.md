---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/search-csuser
schema: 2.0.0
---

# Search-CsUser

## SYNOPSIS
Searches a tenant for users.

## SYNTAX

```
Search-CsUser [-Filter <String>] [-Includedefaultproperty] [-PageSize <Int32>] [-Select <String>]
 [-Skiptoken <String>] [<CommonParameters>]
```

## DESCRIPTION
Searches a tenant for users.

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

### -Filter
MS Graph like query filters

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

### -Includedefaultproperty
To set includedefaultproperties value

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

### -PageSize
Page Size.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Select
Properties to select

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

### -Skiptoken
Continuation / Pagination marker.
Use the value from nextlink property in response.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUser

## NOTES

ALIASES

## RELATED LINKS

