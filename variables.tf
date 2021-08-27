variable "stage" {
  type        = string
  description = "The stage (e.g. live, nonlive)"
}

variable "organization" {
  type        = string
  description = "The GitHub Organization"
}

variable "repository_name" {
  type        = string
  description = "The repository name (within an org) to add secrets to"
}

variable "secrets" {
  type        = map(string)
  description = "A Key-Value map of the screts to add to a repository"
}
