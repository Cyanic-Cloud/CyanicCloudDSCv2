---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/new-csautoattendantmenuoptionmodern
schema: 2.0.0
---

# New-CsAutoAttendantMenuOptionModern

## SYNOPSIS


## SYNTAX

```
New-CsAutoAttendantMenuOptionModern [-Action] <ActionType> [-DtmfResponse] <DtmfTone>
 [[-VoiceResponses] <String[]>] [[-CallTarget] <CallableEntity>] [[-Prompt] <Prompt>] [<CommonParameters>]
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

### -Action


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.ActionType
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallTarget


```yaml
Type: Microsoft.Rtc.Management.Hosted.Online.Models.CallableEntity
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DtmfResponse


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.DtmfTone
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prompt


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.Prompt
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VoiceResponses


```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Object

## NOTES

ALIASES

## RELATED LINKS

