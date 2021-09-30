variable "feature_set" {
  type        = string
  default     = "ALL"
  description = "(Optional) Specify \"ALL\" (default) or \"CONSOLIDATED_BILLING\""
}

variable "aws_service_access_principals" {
  type        = list(any)
  default     = ["controltower.amazonaws.com", "sso.amazonaws.com", "ram.amazonaws.com"]
  description = "(Optional) List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have feature_set set to ALL"
}

variable "enabled_policy_types" {
  type        = list(any)
  default     = ["SERVICE_CONTROL_POLICY", "TAG_POLICY"]
  description = "(Optional) List of Organizations policy types to enable in the Organization Root. Organization must have feature_set set to ALL. For additional information about valid policy types (e.g. BACKUP_POLICY, SERVICE_CONTROL_POLICY, and TAG_POLICY)"
}

variable "policy_ids" {
  type        = list(any)
  default     = []
  description = "Policy Ids to attach to Root Organization OU"
}
