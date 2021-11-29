terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.56.0"
    }
  }
#  backend "s3" {
#    bucket = "pgr301-laba006-terraform"
#    key    = "global/s3/terraform.tfstate"
#    region = "eu-west-1"
#  }
}