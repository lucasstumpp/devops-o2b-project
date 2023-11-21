terraform {
    backend "s3" {
        bucket = "bucket-tf-state-projeto-devops"
        key = "organization/terraform.tf.state"
        region = "us-east-1"

    }
}