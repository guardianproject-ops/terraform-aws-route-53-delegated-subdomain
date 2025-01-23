terraform {
  required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 5.78.0"
      configuration_aliases = [aws.subdomain_account, aws.root_domain_account]
    }
  }
}
