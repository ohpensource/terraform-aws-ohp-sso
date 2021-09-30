## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aad\_group\_name | Azure AD Security Group name | `any` | n/a | yes |
| account\_id | New AWS Account Id | `any` | n/a | yes |
| sso\_identity\_store\_id | SSO IdP identity store id | `any` | n/a | yes |
| sso\_instance\_arn | SSO Idp arn | `any` | n/a | yes |
| sso\_perm\_set\_name | SSO Permission set name to assign to AAD Security Group | `list(any)` | n/a | yes |

## Outputs

No output.

