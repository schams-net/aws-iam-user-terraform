# AWS Secrets Manager

resource "aws_secretsmanager_secret" "credentials" {
    name = "${replace(lower(var.tags.name), "/[^a-z0-9]/", "")}_credentials"
    description = "[${var.tags.name}] IAM User Credentials"
    recovery_window_in_days = 0
    tags = var.tags
}

resource "aws_secretsmanager_secret_version" "credentials" {
    secret_id = aws_secretsmanager_secret.credentials.id
    secret_string = local.iam_user_credentials
}