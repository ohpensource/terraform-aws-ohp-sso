data "aws_identitystore_group" "main" {
  identity_store_id = var.sso_identity_store_id

  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.aad_group_name
  }
}

data "aws_ssoadmin_permission_set" "main" {
  count        = length(var.sso_perm_set_name)
  instance_arn = var.sso_instance_arn
  name         = var.sso_perm_set_name[count.index]
}

