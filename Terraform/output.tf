# Output variables

output "secretsmanager" {
    value = module.aws_secrets_manager.secret.id
}