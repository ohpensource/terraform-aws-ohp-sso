variable "name" {
  type = string
}
variable "parent_ou_id" {
  type = string
}
variable "policy_ids" {
  type        = list(any)
  default     = []
  description = "Policy Ids to attach to OU"
}
