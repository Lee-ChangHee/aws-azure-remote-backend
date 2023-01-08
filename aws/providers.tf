terraform {
  required_version = ">= 1.2.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 4.4.0"
    }
  }

  backend "s3" {
    dynamodb_table = "bodam1234-terraform-lock"
    key            = "bodam1234-default/terraform.tfstate"
    acl            = "bucket-owner-full-control"
    bucket         = "bodam1234-terraform-repo"
    encrypt        = true
    region         = "ap-northeast-2"
  }
}

provider "aws" {
  profile = "mfa"
  region  = "ap-northeast-2"
}