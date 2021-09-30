resource "aws_organizations_organizational_unit" "main" {
  name      = var.name
  parent_id = var.parent_ou_id
}

resource "aws_organizations_policy_attachment" "main" {
  count     = length(var.policy_ids)
  policy_id = var.policy_ids[count.index]
  target_id = aws_organizations_organizational_unit.main.id
}



