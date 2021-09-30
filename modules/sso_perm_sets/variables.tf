variable "name" {
  type        = string
  description = "Permission set name"
}

variable "description" {
  type        = string
  description = "Permission set description"
  default     = ""
}

variable "sso_instance_arn" {
  type        = string
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed"
}

variable "session_duration" {
  type        = string
  description = "(Optional) The length of time that the application user sessions are valid in the ISO-8601 standard"
  default     = "PT12H"
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "relay_state" {
  type        = string
  default     = null
  description = " (Optional) The relay state URL used to redirect users within the application during the federation authentication process"
}

variable "permission_set_policy" {
  type        = string
  default     = null
  description = "(Required) The IAM inline policy json to attach to a Permission Set"
}

variable "managed_policy_arns" {
  type        = list(any)
  default     = []
  description = "The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set"
}
