## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_cfg | Map of variables used to create the account | `list(any)` | n/a | yes |
| sso\_identity\_store\_id | (optional) describe your variable | `string` | n/a | yes |
| sso\_instance\_arn | (optional) describe your variable | `string` | n/a | yes |
| create\_auto\_cfg\_role | (Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so Terraform cannot perform drift detection on its value and will always show a difference for a configured value after import unless ignore\_changes is used | `bool` | `false` | no |
| iam\_user\_access\_to\_billing | (Optional) If set to ALLOW, the new account enables IAM users to access account billing information if they have the required permissions. If set to DENY, then only the root user of the new account can access account billing information | `string` | `null` | no |
| tags | n/a | `map(any)` | `{}` | no |

## Outputs

No output.

