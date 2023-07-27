terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  backend "s3" {
    bucket         = "hawk-aws-ecs-terraform-tfstate"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "hawk-aws-ecs-terraform-tfstate-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}