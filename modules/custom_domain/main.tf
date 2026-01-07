resource "null_resource" "custom_domain" {
  triggers = {
    domain_name = var.domain_name
    environment = var.environment
  }

  provisioner "local-exec" {
    command = "echo 'Setting up custom domain: ${var.domain_name} for environment: ${var.environment}'"
  }
}
