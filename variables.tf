variable "github_token" {
  description = "GitHub Token"
  type        = string
}

variable "github_organization" {
  description = "GitHub Organization Name"
  type        = string
}

variable "applications" {
  description = "List of applications"
  type        = list(object({
    name        = string
    description = string
  }))
}
