<!-- This file was automatically generated by the `build-harness`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->
[![Miquido][logo]](https://www.miquido.com/)

# terraform-acm-request-certificate
Terraform module to request an ACM certificate for a domain and add a CNAME record to the DNS zone to complete certificate validation
---
**Terraform Module**
## Usage

This example will request an SSL certificate for `example.com` domain

```hcl
module "acm_request_certificate" {
  source                            = "git::ssh://git@bitbucket.org/miquido/terraform-acm-request-certificate.git?ref=master"

  providers = {
    aws.acm = aws
    aws.dns = aws
  }

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

  providers = {
    aws.acm = aws
    aws.dns = aws
  }

  domain_name                       = "example.com"
  process_domain_validation_options = true
  ttl                               = "300"
  subject_alternative_names         = ["*.example.com"]
  hosted_zone_id                    = "xxxxx"
}
```
<!-- markdownlint-disable -->
## Makefile Targets
```text
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint Terraform code

```
<!-- markdownlint-restore -->
<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 1.2 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.acm"></a> [aws.acm](#provider\_aws.acm) | >= 2.0 |
| <a name="provider_aws.dns"></a> [aws.dns](#provider\_aws.dns) | >= 2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | A domain name for which the certificate should be issued | `string` | n/a | yes |
| <a name="input_hosted_zone_id"></a> [hosted\_zone\_id](#input\_hosted\_zone\_id) | The ID of the hosted zone to contain validation records. | `string` | `""` | no |
| <a name="input_process_domain_validation_options"></a> [process\_domain\_validation\_options](#input\_process\_domain\_validation\_options) | Flag to enable/disable processing of the record to add to the DNS zone to complete certificate validation | `bool` | `true` | no |
| <a name="input_subject_alternative_names"></a> [subject\_alternative\_names](#input\_subject\_alternative\_names) | A list of domains that should be SANs in the issued certificate | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. map('BusinessUnit`,`XYZ`)` | `map(string)` | `{}` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The TTL of the record to add to the DNS zone to complete certificate validation | `string` | `"300"` | no |
| <a name="input_validation_method"></a> [validation\_method](#input\_validation\_method) | Method to use for validation, DNS or EMAIL | `string` | `"DNS"` | no |
| <a name="input_wait_for_certificate_issued"></a> [wait\_for\_certificate\_issued](#input\_wait\_for\_certificate\_issued) | Whether to wait for the certificate to be issued by ACM (the certificate status changed from `Pending Validation` to `Issued`) | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the certificate |
| <a name="output_domain_validation_options"></a> [domain\_validation\_options](#output\_domain\_validation\_options) | CNAME records that are added to the DNS zone to complete certificate validation |
| <a name="output_id"></a> [id](#output\_id) | The ID of the certificate |
<!-- markdownlint-restore -->


## Developing

1. Make changes in terraform files

2. Regenerate documentation

    ```bash
    bash <(git archive --remote=git@gitlab.com:miquido/terraform/terraform-readme-update.git master update.sh | tar -xO)
    ```

3. Run lint

    ```
    make lint
    ```

## Copyright

Copyright © 2017-2021 [Miquido](https://miquido.com)



### Contributors

|  [![Konrad Obal][k911_avatar]][k911_homepage]<br/>[Konrad Obal][k911_homepage] | [![Maksymilian Lewicki][maksymilian-lewicki_avatar]][maksymilian-lewicki_homepage]<br/>[Maksymilian Lewicki][maksymilian-lewicki_homepage] |
|---|---|

  [k911_homepage]: https://github.com/k911
  [k911_avatar]: https://github.com/k911.png?size=150
  [maksymilian-lewicki_homepage]: https://github.com/maksymilian-lewicki
  [maksymilian-lewicki_avatar]: https://github.com/maksymilian-lewicki.png?size=150



  [logo]: https://www.miquido.com/img/logos/logo__miquido.svg
  [website]: https://www.miquido.com/
  [gitlab]: https://gitlab.com/miquido
  [github]: https://github.com/miquido
  [bitbucket]: https://bitbucket.org/miquido

