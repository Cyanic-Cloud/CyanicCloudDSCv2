---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/update-csuserroutingsettinguserroutingsetting
schema: 2.0.0
---

# Update-CsUserRoutingSettingUserRoutingSetting

## SYNOPSIS
AddOrUpdateUserRoutingSettings

## SYNTAX

### UpdateExpanded (Default)
```
Update-CsUserRoutingSettingUserRoutingSetting -UserId <String> [-CallGroupDetailDelay <String>]
 [-CallGroupDetailOrder <String>] [-CallGroupDetailTarget <String[]>]
 [-CallGroupMembershipSettingCallGroupMembershipDetail <ICallGroupMembershipDetails[]>]
 [-CallGroupMembershipSettingCallGroupNotificationOverride <String>]
 [-DelegationSettingDelegate <IDelegationDetail[]>] [-DelegationSettingDelegator <IDelegationDetail[]>]
 [-ForwardingSettingDelay <String>] [-ForwardingSettingForwardingType <String>] [-ForwardingSettingIsEnabled]
 [-ForwardingSettingTarget <String>] [-ForwardingSettingTargetType <String>] [-SipUri <String>]
 [-UnansweredSettingDelay <String>] [-UnansweredSettingIsEnabled] [-UnansweredSettingSafeForward]
 [-UnansweredSettingTarget <String>] [-UnansweredSettingTargetType <String>] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Update
```
Update-CsUserRoutingSettingUserRoutingSetting -UserId <String> -Body <IUserRoutingSettings> [-PassThru]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### UpdateViaIdentity
```
Update-CsUserRoutingSettingUserRoutingSetting -InputObject <IConfigApiBasedCmdletsIdentity>
 -Body <IUserRoutingSettings> [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### UpdateViaIdentityExpanded
```
Update-CsUserRoutingSettingUserRoutingSetting -InputObject <IConfigApiBasedCmdletsIdentity>
 [-CallGroupDetailDelay <String>] [-CallGroupDetailOrder <String>] [-CallGroupDetailTarget <String[]>]
 [-CallGroupMembershipSettingCallGroupMembershipDetail <ICallGroupMembershipDetails[]>]
 [-CallGroupMembershipSettingCallGroupNotificationOverride <String>]
 [-DelegationSettingDelegate <IDelegationDetail[]>] [-DelegationSettingDelegator <IDelegationDetail[]>]
 [-ForwardingSettingDelay <String>] [-ForwardingSettingForwardingType <String>] [-ForwardingSettingIsEnabled]
 [-ForwardingSettingTarget <String>] [-ForwardingSettingTargetType <String>] [-SipUri <String>]
 [-UnansweredSettingDelay <String>] [-UnansweredSettingIsEnabled] [-UnansweredSettingSafeForward]
 [-UnansweredSettingTarget <String>] [-UnansweredSettingTargetType <String>] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
AddOrUpdateUserRoutingSettings

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

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUserRoutingSettings
Parameter Sets: Update, UpdateViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CallGroupDetailDelay
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallGroupDetailOrder
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallGroupDetailTarget
.

```yaml
Type: System.String[]
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallGroupMembershipSettingCallGroupMembershipDetail
.
To construct, see NOTES section for CALLGROUPMEMBERSHIPSETTINGCALLGROUPMEMBERSHIPDETAIL properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICallGroupMembershipDetails[]
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallGroupMembershipSettingCallGroupNotificationOverride
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DelegationSettingDelegate
.
To construct, see NOTES section for DELEGATIONSETTINGDELEGATE properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IDelegationDetail[]
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DelegationSettingDelegator
.
To construct, see NOTES section for DELEGATIONSETTINGDELEGATOR properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IDelegationDetail[]
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForwardingSettingDelay
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForwardingSettingForwardingType
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForwardingSettingIsEnabled
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForwardingSettingTarget
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForwardingSettingTargetType
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
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
Parameter Sets: UpdateViaIdentity, UpdateViaIdentityExpanded
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

### -SipUri
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnansweredSettingDelay
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnansweredSettingIsEnabled
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnansweredSettingSafeForward
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnansweredSettingTarget
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnansweredSettingTargetType
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserId
.

```yaml
Type: System.String
Parameter Sets: Update, UpdateExpanded
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

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IUserRoutingSettings

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <IUserRoutingSettings>: .
  - `[CallGroupDelay <String>]`: 
  - `[CallGroupOrder <String>]`: 
  - `[CallGroupTargets <String[]>]`: 
  - `[Delegates <IDelegationDetail[]>]`: 
    - `[CreatedDate <DateTime?>]`: 
    - `[Id <String>]`: 
    - `[IsActive <Boolean?>]`: 
    - `[MakeCalls <Boolean?>]`: 
    - `[ManageSettings <Boolean?>]`: 
    - `[ReceiveCalls <Boolean?>]`: 
  - `[Delegators <IDelegationDetail[]>]`: 
  - `[ForwardingDelay <String>]`: 
  - `[ForwardingTarget <String>]`: 
  - `[ForwardingTargetType <String>]`: 
  - `[ForwardingType <String>]`: 
  - `[GroupMembershipDetails <ICallGroupMembershipDetails[]>]`: 
    - `[CallGroupOwnerId <String>]`: 
    - `[NotificationSetting <String>]`: 
  - `[GroupNotificationOverride <String>]`: 
  - `[IsForwardingEnabled <Boolean?>]`: 
  - `[IsSafeForward <Boolean?>]`: 
  - `[IsUnansweredEnabled <Boolean?>]`: 
  - `[SipUri <String>]`: 
  - `[UnansweredDelay <String>]`: 
  - `[UnansweredTarget <String>]`: 
  - `[UnansweredTargetType <String>]`: 

CALLGROUPMEMBERSHIPSETTINGCALLGROUPMEMBERSHIPDETAIL <ICallGroupMembershipDetails[]>: .
  - `[CallGroupOwnerId <String>]`: 
  - `[NotificationSetting <String>]`: 

DELEGATIONSETTINGDELEGATE <IDelegationDetail[]>: .
  - `[CreatedDate <DateTime?>]`: 
  - `[Id <String>]`: 
  - `[IsActive <Boolean?>]`: 
  - `[MakeCalls <Boolean?>]`: 
  - `[ManageSettings <Boolean?>]`: 
  - `[ReceiveCalls <Boolean?>]`: 

DELEGATIONSETTINGDELEGATOR <IDelegationDetail[]>: .
  - `[CreatedDate <DateTime?>]`: 
  - `[Id <String>]`: 
  - `[IsActive <Boolean?>]`: 
  - `[MakeCalls <Boolean?>]`: 
  - `[ManageSettings <Boolean?>]`: 
  - `[ReceiveCalls <Boolean?>]`: 

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

