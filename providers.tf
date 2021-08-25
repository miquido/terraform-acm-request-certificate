terraform {
  required_version = ">= 0.15"
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 2.0"
      configuration_aliases = [acm, dns]
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.2"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 2.0"
    }
  }
}
