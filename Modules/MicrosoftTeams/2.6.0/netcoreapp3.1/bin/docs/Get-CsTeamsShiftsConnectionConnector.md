---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/get-csteamsshiftsconnectionconnector
schema: 2.0.0
---

# Get-CsTeamsShiftsConnectionConnector

## SYNOPSIS
Gets all supported connectors.

## SYNTAX

```
Get-CsTeamsShiftsConnectionConnector [<CommonParameters>]
```

## DESCRIPTION
Gets all supported connectors.

## EXAMPLES

### Example 1: Get the list of shifts connectors available
```powershell
PS C:\> Get-CsTeamsShiftsConnectionConnector

Id                                   Name        SupportedScenario               Version
--                                   ----        -----------------               -------
6A51B888-FF44-4FEA-82E1-839401E9CD74 Blue Yonder {Shift, SwapRequest, OpenShift} 2020.3
```

Get the list of shifts connectors available

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectorResponse

## NOTES

ALIASES

## RELATED LINKS

