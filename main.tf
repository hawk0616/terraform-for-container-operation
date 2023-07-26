terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  backend "s3" {
    bucket         = "hawk-aws-ecs-terraform-tfstate"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "hawk-aws-ecs-terraform-tfstate-locking"
    encrypt        = true
  }
}