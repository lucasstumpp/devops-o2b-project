provider "aws" {
  region  = "us-east-1"
}

terraform {
    backend "s3" {
        bucket = "bucket-tf-state-projeto-devops"
        key = "terraform.tf.state"
        region = "us-east-1"

    }
}