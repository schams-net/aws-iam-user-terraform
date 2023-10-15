# ...

locals {
    iam_user_credentials = templatefile(
        "${path.module}/templates/iam_user_credentials.tftpl",
        {
            access_key_id = var.credentials.access_key_id
            secret_access_key = var.credentials.secret_access_key
        }
    )
}