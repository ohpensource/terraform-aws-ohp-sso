# Service Control Policy Ids
output "scp_force_tags_id" {
  value = aws_organizations_policy.scp_force_tags.id
}

# Tag Policy Ids
output "tag_enforce_policy_id" {
  value = aws_organizations_policy.tag_enforce_policy.id
}
