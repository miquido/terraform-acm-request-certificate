provider "aws" {
  alias                   = "acm"
  region                  = var.acm_region
}

provider "aws" {
  alias                   = "dns"

  dynamic "assume_role" {
    for_each = var.dns_aws_assume_role_arn != "" ? ["true"] : []
    content {
      role_arn = var.dns_aws_assume_role_arn
    }
  }
}
