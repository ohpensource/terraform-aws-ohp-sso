resource "aws_organizations_organization" "main" {
  aws_service_access_principals = var.aws_service_access_principals
  feature_set                   = var.feature_set
  enabled_policy_types          = var.enabled_policy_types
}


resource "aws_organizations_policy_attachment" "main" {
  count     = length(var.policy_ids)
  policy_id = var.policy_ids[count.index]
  target_id = aws_organizations_organization.main.roots[0].id
}
