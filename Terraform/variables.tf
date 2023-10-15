# Global variables

variable "profile" {
    type = string
    default = "default"
}

variable "region" {
    type = string
    default = "ap-southeast-2"
}

variable "tags" {
    type = map
    default = {
        "name" = "iam-user"
        "billing-id" = "aws-test"
    }
}