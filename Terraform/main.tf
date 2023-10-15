# Main configuration

# AWS Identity and Access Management (IAM)
module "aws_iam" {
    source = "./modules/iam"
    random_identifier = random_id.identifier
    tags = var.tags
}

# Amazon Secrets Manager
module "aws_secrets_manager" {
    source = "./modules/secrets-manager"
    credentials = module.aws_iam.credentials
    tags = var.tags
}