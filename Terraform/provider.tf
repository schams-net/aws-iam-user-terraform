# Terraform AWS provider
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs

provider "aws" {
    profile = var.profile
    region = var.region
}