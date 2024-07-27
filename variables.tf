variable "github_token" {
  description = "GitHub Token"
  type        = string
}

variable "github_username" {
  description = "GitHub Username"
  type        = string
}

variable "applications" {
  description = "List of applications"
  type        = list(object({
    name        = string
    description = string
  }))
}
