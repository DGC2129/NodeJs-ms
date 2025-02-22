provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "1.10.0" 
  required_providers {
    aws = {
      version = "<= 6.0.0" 
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "bucketdemo989"
    key    = "bucketdemo989.tfstate"
    region = "us-east-1"
    dynamodb_table = "devsecopsb39-terraform-locks"
    encrypt        = true
  }  
}

 