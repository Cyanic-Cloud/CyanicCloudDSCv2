---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/new-csautoattendantpromptmodern
schema: 2.0.0
---

# New-CsAutoAttendantPromptModern

## SYNOPSIS


## SYNTAX

### DualParameterSet (Default)
```
New-CsAutoAttendantPromptModern [-ActiveType] <String> [[-AudioFilePrompt] <AudioFile>]
 [[-TextToSpeechPrompt] <String>] [<CommonParameters>]
```

### AudioFileParameterSet
```
New-CsAutoAttendantPromptModern [-AudioFilePrompt] <AudioFile> [<CommonParameters>]
```

### TextToSpeechParameterSet
```
New-CsAutoAttendantPromptModern [-TextToSpeechPrompt] <String> [<CommonParameters>]
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

### -ActiveType


```yaml
Type: System.String
Parameter Sets: DualParameterSet
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AudioFilePrompt


```yaml
Type: Microsoft.Rtc.Management.Hosted.Online.Models.AudioFile
Parameter Sets: AudioFileParameterSet, DualParameterSet
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TextToSpeechPrompt


```yaml
Type: System.String
Parameter Sets: DualParameterSet, TextToSpeechParameterSet
Aliases:

Required: True
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

