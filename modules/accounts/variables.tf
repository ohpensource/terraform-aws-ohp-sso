variable "account_cfg" {
  type        = list(any)
  description = "Map of variables used to create the account"
}

variable "tags" {
  type    = map(any)
  default = {}
}

# variable "sso_permissions" {
#   type        = map(any)
#   description = "SSO permissions to assign to account"
# }

variable "sso_identity_store_id" {
  type        = string
  description = "(optional) describe your variable"
}

variable "sso_instance_arn" {
  type        = string
  description = "(optional) describe your variable"
}

variable "iam_user_access_to_billing" {
  type        = string
  description = "(Optional) If set to ALLOW, the new account enables IAM users to access account billing information if they have the required permissions. If set to DENY, then only the root user of the new account can access account billing information"
  default     = null
}

variable "create_auto_cfg_role" {
  type        = bool
  default     = false
  description = "(Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so Terraform cannot perform drift detection on its value and will always show a difference for a configured value after import unless ignore_changes is used"
}
