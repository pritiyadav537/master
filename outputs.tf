output "custom_domain_name" {
  description = "The configured custom domain name"
  value       = module.custom_domain.domain_name
}

output "custom_domain_environment" {
  description = "The environment for the custom domain"
  value       = module.custom_domain.environment
}
