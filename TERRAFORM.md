# Terraform Configuration

This directory contains Terraform configuration files for managing custom domain infrastructure.

## Structure

```
.
├── main.tf                           # Root module - calls custom_domain module
├── variables.tf                      # Root module variable definitions
├── outputs.tf                        # Root module outputs
├── dev.tfvars                        # Development environment variables
└── modules/
    └── custom_domain/                # Custom domain module
        ├── main.tf                   # Module resources
        ├── variables.tf              # Module variable definitions
        └── outputs.tf                # Module outputs
```

## Usage

### Initialize Terraform

```bash
terraform init
```

### Plan with dev.tfvars

```bash
terraform plan -var-file="dev.tfvars"
```

### Apply with dev.tfvars

```bash
terraform apply -var-file="dev.tfvars"
```

## Variables

The following variables can be configured in `dev.tfvars`:

- `domain_name`: The custom domain name to configure (e.g., "dev.example.com")
- `environment`: The environment for the custom domain (e.g., "dev", "staging", "prod")

## Module: custom_domain

The custom_domain module manages custom domain configuration. It accepts the following inputs:

- `domain_name`: The custom domain name
- `environment`: The deployment environment

And provides the following outputs:

- `domain_name`: The configured domain name
- `environment`: The environment for the domain
