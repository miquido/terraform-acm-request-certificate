<!-- This file was automatically generated by the `build-harness`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->
[![Miquido][logo]](https://www.miquido.com/)

# terraform-acm-request-certificate
Terraform module to request an ACM certificate for a domain and add a CNAME record to the DNS zone to complete certificate validation
---
Terraform Module

BitBucket Repository: https://bitbucket.org/miquido/terraform-acm-request-certificate
## Usage

This example will request an SSL certificate for `example.com` domain

```hcl
module "acm_request_certificate" {
  source                            = "git::ssh://git@bitbucket.org/miquido/terraform-acm-request-certificate.git?ref=master"
  domain_name                       = "example.com"
  process_domain_validation_options = true
  ttl                               = "300"
  hosted_zone_id                    = "xxxxx"
}
```

This example will request an SSL certificate for `example.com` domain and all its subdomains `*.example.com`

```hcl
module "acm_request_certificate" {
  source                            = "git::ssh://git@bitbucket.org/miquido/terraform-acm-request-certificate.git?ref=master"
  domain_name                       = "example.com"
  process_domain_validation_options = true
  ttl                               = "300"
  subject_alternative_names         = ["*.example.com"]
  hosted_zone_id                    = "xxxxx"
}
```
## Makefile Targets
```
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint terraform code

```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| domain_name | A domain name for which the certificate should be issued | string | - | yes |
| enabled | Set to false to prevent the module from creating or accessing any resources | bool | `true` | no |
| hosted_zone_id | The ID of the hosted zone to contain validation records. | string | `` | no |
| process_domain_validation_options | Flag to enable/disable processing of the record to add to the DNS zone to complete certificate validation | bool | `true` | no |
| subject_alternative_names | A list of domains that should be SANs in the issued certificate | list(string) | `<list>` | no |
| tags | Additional tags (e.g. map('BusinessUnit`,`XYZ`) | map(string) | `<map>` | no |
| ttl | The TTL of the record to add to the DNS zone to complete certificate validation | string | `300` | no |
| validation_method | Method to use for validation, DNS or EMAIL | string | `DNS` | no |
| wait_for_certificate_issued | Whether to wait for the certificate to be issued by ACM (the certificate status changed from `Pending Validation` to `Issued`) | bool | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the certificate |
| domain_validation_options | CNAME records that are added to the DNS zone to complete certificate validation |
| id | The ID of the certificate |



## Developing

1. Make changes in terraform files

2. Regerate documentation

    ```bash
    bash <(curl -s https://terraform.s3.k.miquido.net/update.sh)
    ```

3. Run lint

    ```
    make lint
    ```

## Copyright

Copyright © 2017-2019 [Miquido](https://miquido.com)



### Contributors

|  [![Konrad Obal][k911_avatar]][k911_homepage]<br/>[Konrad Obal][k911_homepage] |
|---|

  [k911_homepage]: https://github.com/k911
  [k911_avatar]: https://github.com/k911.png?size=150



  [logo]: https://www.miquido.com/img/logos/logo__miquido.svg
  [website]: https://www.miquido.com/
  [github]: https://github.com/miquido
  [bitbucket]: https://bitbucket.org/miquido
