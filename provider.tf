# Provider used to create ACM resources
provider "aws" {
  alias = "acm"
}

# Provider used to create route53 records
provider "aws" {
  alias = "dns"
}
