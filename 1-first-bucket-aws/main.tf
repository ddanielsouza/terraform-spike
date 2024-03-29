terraform {
  required_version = ">= 1.0.0"

  required_providers {
    #https://registry.terraform.io/providers/hashicorp/aws/latest/docs
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "dnsouza"
      managed-by = "terraform"
    }
  }
}