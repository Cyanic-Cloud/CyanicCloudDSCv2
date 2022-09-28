---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/new-csautoattendantmodern
schema: 2.0.0
---

# New-CsAutoAttendantModern

## SYNOPSIS


## SYNTAX

```
New-CsAutoAttendantModern [-Name] <String> [-LanguageId] <String> [-DefaultCallFlow] <CallFlow>
 [-TimeZoneId] <String> [[-VoiceId] <String>] [[-Operator] <CallableEntity>] [[-EnableVoiceResponse]]
 [[-CallFlows] <CallFlow[]>] [[-CallHandlingAssociations] <CallHandlingAssociation[]>]
 [[-InclusionScope] <DialScope>] [[-ExclusionScope] <DialScope>] [[-GreetingsSettingAuthorizedUsers] <Guid[]>]
 [<CommonParameters>]
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

### -CallFlows


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.CallFlow[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallHandlingAssociations


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.CallHandlingAssociation[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultCallFlow


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.CallFlow
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableVoiceResponse


```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExclusionScope


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.DialScope
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GreetingsSettingAuthorizedUsers


```yaml
Type: System.Guid[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InclusionScope


```yaml
Type: Microsoft.Rtc.Management.Hosted.OAA.Models.DialScope
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LanguageId


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Operator


```yaml
Type: Microsoft.Rtc.Management.Hosted.Online.Models.CallableEntity
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeZoneId


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VoiceId


```yaml
Type: System.String
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

