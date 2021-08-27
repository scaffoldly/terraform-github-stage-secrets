locals {
  repository = "${var.organization}/${var.repository_name}"
}

resource "github_actions_secret" "secret" {
  for_each = var.secrets

  repository      = local.repository
  secret_name     = "${upper(var.stage)}_${each.key}"
  plaintext_value = each.value
}
