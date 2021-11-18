## Usage

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssoadmin_account_assignment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_account_assignment) | resource |
| [aws_identitystore_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/identitystore_group) | data source |
| [aws_ssoadmin_instances.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssoadmin_instances) | data source |
| [aws_ssoadmin_permission_set.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssoadmin_permission_set) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aad_group_name"></a> [aad\_group\_name](#input\_aad\_group\_name) | Azure AD Security Group name | `any` | n/a | yes |
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | New AWS Account Id | `any` | n/a | yes |
| <a name="input_sso_perm_set_name"></a> [sso\_perm\_set\_name](#input\_sso\_perm\_set\_name) | SSO Permission set name to assign to AAD Security Group | `list(any)` | n/a | yes |

## Outputs

No outputs.

<!--- END_TF_DOCS --->
