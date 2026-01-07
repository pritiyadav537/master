terraform {
  required_version = ">= 1.0"
}

module "custom_domain" {
  source = "./modules/custom_domain"

  domain_name = var.domain_name
  environment = var.environment
}
