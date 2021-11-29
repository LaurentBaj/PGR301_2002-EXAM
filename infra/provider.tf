terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.56.0"
    }
  }
  backend "s3" {
    bucket = "pgr301-laba006-terraform"
    key    = "laba006/terraform-in-pipeline.state"
    region = "eu-west-1"
  }
}