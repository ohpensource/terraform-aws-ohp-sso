resource "aws_organizations_account" "main" {
  name                       = var.account_cfg[0].name
  email                      = var.account_cfg[0].email
  iam_user_access_to_billing = var.iam_user_access_to_billing
  parent_id                  = var.account_cfg[0].parent_ou_id
  role_name                  = local.tfm_account_auto_cfg_role
  tags                       = var.tags
}


module "sso_permissions" {
  source   = "../sso"
  for_each = var.account_cfg[0].sso_perms

  aad_group_name    = each.key
  sso_perm_set_name = each.value
  account_id        = aws_organizations_account.main.id
}
