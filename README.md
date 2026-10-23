# Default VPC Terraform

Terraform configuration for an AWS VPC with one public subnet, one private subnet, an internet gateway, and a NAT gateway.

## Prerequisites

- Terraform 1.10 or later
- AWS credentials configured locally for the AWS provider

## Preview the configuration

Copy `terraform.tfvars.example` to `terraform.tfvars` and adjust the values if needed. The local `terraform.tfvars` file is ignored by Git.

From this directory, run:

```sh
terraform init
terraform validate
terraform plan
```

`terraform plan` previews the proposed changes. Do not run `terraform apply` unless you intend to create AWS resources.
