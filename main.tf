resource "github_actions_secret" "secret" {
  for_each = var.secrets

  repository      = var.repository_name
  secret_name     = "${upper(var.stage)}_${each.key}"
  plaintext_value = each.value
}
