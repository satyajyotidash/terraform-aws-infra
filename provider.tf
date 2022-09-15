
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 4.22.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-state-sjd-bucket-1992"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
  }
}

provider "aws" {
  region = "ap-south-1"

  default_tags {
    tags = {
      Owner = "Satya"
    }
  }
}



