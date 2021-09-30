## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_service\_access\_principals | (Optional) List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have feature\_set set to ALL | `list(any)` | <pre>[<br>  "controltower.amazonaws.com",<br>  "sso.amazonaws.com"<br>]</pre> | no |
| enabled\_policy\_types | (Optional) List of Organizations policy types to enable in the Organization Root. Organization must have feature\_set set to ALL. For additional information about valid policy types (e.g. BACKUP\_POLICY, SERVICE\_CONTROL\_POLICY, and TAG\_POLICY) | `list(any)` | <pre>[<br>  "SERVICE_CONTROL_POLICY",<br>  "TAG_POLICY"<br>]</pre> | no |
| feature\_set | (Optional) Specify "ALL" (default) or "CONSOLIDATED\_BILLING" | `string` | `"ALL"` | no |
| policy\_ids | Policy Ids to attach to Root Organization OU | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| root\_ou\_id | n/a |
| roots | n/a |

