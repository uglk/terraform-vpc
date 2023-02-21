terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
  backend "s3" {
    bucket  = "terraform-ugl-backend"
    key     = "state/terraform.tfstate"
    region  = "ap-south-1"
    profile = "mumbai"
  }
}

provider "aws" {
  region  = var.location
  profile = var.user
}


