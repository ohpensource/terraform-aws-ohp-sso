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
| [aws_organizations_organization.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |
| [aws_organizations_policy_attachment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_service_access_principals"></a> [aws\_service\_access\_principals](#input\_aws\_service\_access\_principals) | (Optional) List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have feature\_set set to ALL | `list(any)` | <pre>[<br>  "controltower.amazonaws.com",<br>  "sso.amazonaws.com",<br>  "ram.amazonaws.com"<br>]</pre> | no |
| <a name="input_enabled_policy_types"></a> [enabled\_policy\_types](#input\_enabled\_policy\_types) | (Optional) List of Organizations policy types to enable in the Organization Root. Organization must have feature\_set set to ALL. For additional information about valid policy types (e.g. BACKUP\_POLICY, SERVICE\_CONTROL\_POLICY, and TAG\_POLICY) | `list(any)` | <pre>[<br>  "SERVICE_CONTROL_POLICY",<br>  "TAG_POLICY"<br>]</pre> | no |
| <a name="input_feature_set"></a> [feature\_set](#input\_feature\_set) | (Optional) Specify "ALL" (default) or "CONSOLIDATED\_BILLING" | `string` | `"ALL"` | no |
| <a name="input_policy_ids"></a> [policy\_ids](#input\_policy\_ids) | Policy Ids to attach to Root Organization OU | `list(any)` | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_root_ou_id"></a> [root\_ou\_id](#output\_root\_ou\_id) | n/a |
| <a name="output_roots"></a> [roots](#output\_roots) | n/a |

<!--- END_TF_DOCS --->
