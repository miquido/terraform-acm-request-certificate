variable "wait_for_certificate_issued" {
  type        = bool
  default     = false
  description = "Whether to wait for the certificate to be issued by ACM (the certificate status changed from `Pending Validation` to `Issued`)"
}

variable "domain_name" {
  type        = string
  description = "A domain name for which the certificate should be issued"
}

variable "validation_method" {
  type        = string
  default     = "DNS"
  description = "Method to use for validation, DNS or EMAIL"
}

variable "process_domain_validation_options" {
  type        = bool
  default     = true
  description = "Flag to enable/disable processing of the record to add to the DNS zone to complete certificate validation"
}

variable "ttl" {
  type        = string
  default     = "300"
  description = "The TTL of the record to add to the DNS zone to complete certificate validation"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map('BusinessUnit`,`XYZ`)"
}

variable "subject_alternative_names" {
  type        = list(string)
  default     = []
  description = "A list of domains that should be SANs in the issued certificate"
}

variable "hosted_zone_id" {
  type        = string
  default     = ""
  description = "The ID of the hosted zone to contain validation records."
}

variable "acm_region" {
  type = string
  description = "region of acm provider"
}

variable "dns_aws_assume_role_arn" {
  type = string
  default = ""
  description = "role of dns provider"
}
