resource "aws_ssoadmin_account_assignment" "main" {
  count              = length(var.sso_perm_set_name)
  instance_arn       = local.sso_instance_arn
  permission_set_arn = data.aws_ssoadmin_permission_set.main[count.index].arn

  principal_id   = data.aws_identitystore_group.main.group_id
  principal_type = "GROUP"

  target_id   = var.account_id
  target_type = "AWS_ACCOUNT"
}
