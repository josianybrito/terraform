terraform {
    required_version = ">= 1.3.0"
    
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      owner      = "josiany"
      managed-by = "terraform"
    }
  }
}

