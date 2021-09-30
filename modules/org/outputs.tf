output "roots" {
  value = aws_organizations_organization.main.roots
}

output "root_ou_id" {
  value = aws_organizations_organization.main.roots[0].id
}
