variable "aad_group_name" {
  description = "Azure AD Security Group name"
}
variable "sso_perm_set_name" {
  type        = list(any)
  description = "SSO Permission set name to assign to AAD Security Group"
}
variable "sso_identity_store_id" {
  description = "SSO IdP identity store id"
}
variable "sso_instance_arn" {
  description = "SSO Idp arn"
}
variable "account_id" {
  description = "New AWS Account Id"
}
