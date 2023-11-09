provider "aws" {
  region  = "us-east-1"
}

terraform {
    backend "s3" {
        bucket = ""
        key = "terraform.tf.state"
        region = "us-east-1"

    }
}