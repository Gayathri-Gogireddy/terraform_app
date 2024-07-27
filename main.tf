provider "github" {
  token        = var.github_token
  organization = var.github_username
}

resource "github_repository" "repos" {
  for_each    = { for app in var.applications : app.name => app }
  name        = each.value.name
  description = each.value.description
  visibility  = "public"
  auto_init   = true
}

output "repos" {
  value = github_repository.repos[*].name
}
