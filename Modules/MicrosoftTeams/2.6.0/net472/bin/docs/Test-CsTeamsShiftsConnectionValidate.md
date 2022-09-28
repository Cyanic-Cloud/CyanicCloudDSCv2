---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/test-csteamsshiftsconnectionvalidate
schema: 2.0.0
---

# Test-CsTeamsShiftsConnectionValidate

## SYNOPSIS
Validates WFM settings from given request.

## SYNTAX

### TestExpanded (Default)
```
Test-CsTeamsShiftsConnectionValidate -ConnectorId <String> -ConnectorSpecificSettingAdminApiUrl <String>
 -ConnectorSpecificSettingCookieAuthUrl <String> -ConnectorSpecificSettingEssApiUrl <String>
 -ConnectorSpecificSettingFederatedAuthUrl <String> -ConnectorSpecificSettingLoginPwd <String>
 -ConnectorSpecificSettingLoginUserName <String> -ConnectorSpecificSettingRetailWebApiUrl <String>
 -ConnectorSpecificSettingSiteManagerUrl <String> -Name <String> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Test
```
Test-CsTeamsShiftsConnectionValidate -Body <IConnectorInstanceBaseRequest> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Validates WFM settings from given request.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> Test-CsTeamsShiftsConnectionValidate -ConnectorId "6A51B888-FF44-4FEA-82E1-839401E9CD74" -ConnectorSpecificSettingAdminApiUrl "https://nehstdevwfm02.replgroup.com/retail/data/wfmadmin/api/v1-beta2" -ConnectorSpecificSettingCookieAuthUrl "https://nehstdevwfm02.replgroup.com/retail/data/login" -ConnectorSpecificSettingEssApiUrl "https://nehstdevfas01.replgroup.com/retail/data/wfmess/api/v1-beta1" -ConnectorSpecificSettingFederatedAuthUrl "https://nehstdevfas01.replgroup.com/retail/data/login" -ConnectorSpecificSettingLoginPwd $plainPwd -ConnectorSpecificSettingLoginUserName $WfmUserName -ConnectorSpecificSettingRetailWebApiUrl "https://nehstdevwfm02.replgroup.com/retail/data/retailwebapi/api/v1" -ConnectorSpecificSettingSiteManagerUrl "https://nehstdevfas01.replgroup.com/retail/data/wfmsm/api/v1-beta2" -Name $InstanceName
```

Validates WFM settings from given configuration

## PARAMETERS

### -Body
Connector Instance Base Request.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectorInstanceBaseRequest
Parameter Sets: Test
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ConnectorId
The connector id.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingAdminApiUrl
The admin api url.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingCookieAuthUrl
The cookie Auth url.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingEssApiUrl
The ess api url.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingFederatedAuthUrl
The federated Auth url.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingLoginPwd
The login password.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingLoginUserName
The login username.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingRetailWebApiUrl
The retail web api url.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectorSpecificSettingSiteManagerUrl
The site manager url.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The connector instance name.

```yaml
Type: System.String
Parameter Sets: TestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
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

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IConnectorInstanceBaseRequest

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <IConnectorInstanceBaseRequest>: Connector Instance Base Request.
  - `ConnectorId <String>`: The connector id.
  - `ConnectorSpecificSettingAdminApiUrl <String>`: The admin api url.
  - `ConnectorSpecificSettingCookieAuthUrl <String>`: The cookie Auth url.
  - `ConnectorSpecificSettingEssApiUrl <String>`: The ess api url.
  - `ConnectorSpecificSettingFederatedAuthUrl <String>`: The federated Auth url.
  - `ConnectorSpecificSettingLoginPwd <String>`: The login password.
  - `ConnectorSpecificSettingLoginUserName <String>`: The login username.
  - `ConnectorSpecificSettingRetailWebApiUrl <String>`: The retail web api url.
  - `ConnectorSpecificSettingSiteManagerUrl <String>`: The site manager url.
  - `Name <String>`: The connector instance name.

## RELATED LINKS

