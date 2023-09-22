#Author: Alexandru Raul
terraform {
  required_version = "~> 1.5.2"  # Specify the minimum required Terraform version here
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 5.0"
    }
  }
}