# Cloudflare DNS record set module

Terraform module to create multiple Cloudflare DNS records in bulk.

## Requirements

| Name                  | Version  |
| --------------------- | -------- |
| terraform             | >= 1.9.0 |
| cloudflare/cloudflare | >= 5.0.0 |

## Providers

| Name                  | Version  |
| --------------------- | -------- |
| cloudflare/cloudflare | >= 5.0.0 |

## Modules

| Name                                 | Version |
| ------------------------------------ | ------- |
| visiosto/terraform-cloudflare-record | 0.3.4   |

## Resources

No resources.

## Inputs

| Name        | Description                                | Type     | Default | Required |
| ----------- | ------------------------------------------ | -------- | ------- | :------: |
| default_ttl | The default TTL for DNS records in seconds | `number` | `1`     |    no    |
| records     | A map of DNS records to create             | `map`    | `{}`    |   yes    |

Please see [variables.tf](variables.tf) for more details on the `records`
variable.

## Outputs

| Name        | Description                                            |
| ----------- | ------------------------------------------------------ |
| record_data | The data that was used to create the records as a map. |
