## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Permission set name | `string` | n/a | yes |
| sso\_instance\_arn | (Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed | `string` | n/a | yes |
| description | Permission set description | `string` | `""` | no |
| managed\_policy\_arns | The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set | `list(any)` | `[]` | no |
| permission\_set\_policy | (Required) The IAM inline policy json to attach to a Permission Set | `string` | `null` | no |
| relay\_state | (Optional) The relay state URL used to redirect users within the application during the federation authentication process | `string` | `null` | no |
| session\_duration | (Optional) The length of time that the application user sessions are valid in the ISO-8601 standard | `string` | `"PT12H"` | no |
| tags | n/a | `map(any)` | `{}` | no |

## Outputs

No output.

