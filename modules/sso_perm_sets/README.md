## Usage

<!--- BEGIN_TF_DOCS --->
### Requirements

No requirements.

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_ssoadmin_managed_policy_attachment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_managed_policy_attachment) | resource |
| [aws_ssoadmin_permission_set.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set) | resource |
| [aws_ssoadmin_permission_set_inline_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set_inline_policy) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Permission set description | `string` | `""` | no |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Permission set name | `string` | n/a | yes |
| <a name="input_permission_set_policy"></a> [permission\_set\_policy](#input\_permission\_set\_policy) | (Required) The IAM inline policy json to attach to a Permission Set | `string` | `null` | no |
| <a name="input_relay_state"></a> [relay\_state](#input\_relay\_state) | (Optional) The relay state URL used to redirect users within the application during the federation authentication process | `string` | `null` | no |
| <a name="input_session_duration"></a> [session\_duration](#input\_session\_duration) | (Optional) The length of time that the application user sessions are valid in the ISO-8601 standard | `string` | `"PT12H"` | no |
| <a name="input_sso_instance_arn"></a> [sso\_instance\_arn](#input\_sso\_instance\_arn) | (Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | `{}` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |

<!--- END_TF_DOCS --->
