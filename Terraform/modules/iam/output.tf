# Output variables

output "credentials" {
    value = {
        username = aws_iam_user.iam_user.name
        access_key_id = aws_iam_access_key.iam_user.id
        secret_access_key = aws_iam_access_key.iam_user.secret
    }
}