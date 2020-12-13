# Terraform

Terraform module to provision a AWS security group.

## Features

Each Security Group will suffixed with an unique id to prevent any conflicts during resoure creation.

## Examples

Look into the `examples` folder how to use this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.3 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | Description of the SG. | `string` | n/a | yes |
| egress | Map containing the definition of the ingress rules. | `list(any)` | n/a | yes |
| ingress | Map containing the definition of the ingress rules. | `list(any)` | n/a | yes |
| name | Name of the SG. Will be suffixed with an unique id. | `string` | n/a | yes |
| tags | Tags to apply to the resource. | `map(string)` | n/a | yes |
| vpc\_id | VPC ID. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_sg\_arn | ARN of the SG. |
| this\_sg\_id | ID of the SG. |
| this\_sg\_name | Name of the SG. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
