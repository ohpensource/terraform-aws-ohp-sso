variable "aad_group_name" {
  description = "Azure AD Security Group name"
}
variable "sso_perm_set_name" {
  type        = list(any)
  description = "SSO Permission set name to assign to AAD Security Group"
}
variable "account_id" {
  description = "New AWS Account Id"
}
