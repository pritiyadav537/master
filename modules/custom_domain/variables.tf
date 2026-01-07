variable "domain_name" {
  description = "The custom domain name to configure"
  type        = string
}

variable "environment" {
  description = "The environment for the custom domain (e.g., dev, staging, prod)"
  type        = string
}
