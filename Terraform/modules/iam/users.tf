# IAM users

resource "aws_iam_user" "iam_user" {
    name = "${var.tags.name}-${var.random_identifier.id}"
    path = "/"

    # When destroying this user, destroy even if it has non-Terraform-managed
    # IAM access keys, login profile or MFA devices.
    force_destroy = true

    tags = var.tags
}

resource "aws_iam_access_key" "iam_user" {
    user = aws_iam_user.iam_user.name
    status = "Active"
}