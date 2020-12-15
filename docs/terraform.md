<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 2.0 |
| local | >= 1.2 |
| null | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws.acm | >= 2.0 |
| aws.dns | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain\_name | A domain name for which the certificate should be issued | `string` | n/a | yes |
| hosted\_zone\_id | The ID of the hosted zone to contain validation records. | `string` | `""` | no |
| process\_domain\_validation\_options | Flag to enable/disable processing of the record to add to the DNS zone to complete certificate validation | `bool` | `true` | no |
| subject\_alternative\_names | A list of domains that should be SANs in the issued certificate | `list(string)` | `[]` | no |
| tags | Additional tags (e.g. map('BusinessUnit`,`XYZ`)` | `map(string)` | `{}` | no |
| ttl | The TTL of the record to add to the DNS zone to complete certificate validation | `string` | `"300"` | no |
| validation\_method | Method to use for validation, DNS or EMAIL | `string` | `"DNS"` | no |
| wait\_for\_certificate\_issued | Whether to wait for the certificate to be issued by ACM (the certificate status changed from `Pending Validation` to `Issued`) | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the certificate |
| domain\_validation\_options | CNAME records that are added to the DNS zone to complete certificate validation |
| id | The ID of the certificate |

<!-- markdownlint-restore -->
