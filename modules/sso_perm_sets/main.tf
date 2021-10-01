resource "aws_ssoadmin_permission_set" "main" {
  name             = var.name
  description      = var.description
  instance_arn     = var.sso_instance_arn
  relay_state      = var.relay_state
  session_duration = var.session_duration
}

resource "aws_ssoadmin_permission_set_inline_policy" "main" {
  count              = var.permission_set_policy != null ? 1 : 0
  inline_policy      = var.permission_set_policy
  instance_arn       = aws_ssoadmin_permission_set.main.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.main.arn
}

resource "aws_ssoadmin_managed_policy_attachment" "main" {
  count              = length(var.managed_policy_arns)
  instance_arn       = aws_ssoadmin_permission_set.main.instance_arn
  managed_policy_arn = var.managed_policy_arns[count.index]
  permission_set_arn = aws_ssoadmin_permission_set.main.arn
}

