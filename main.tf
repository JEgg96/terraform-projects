#Configure AWS provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

#Stores the terraform file in s3
terraform {
  backend "s3" {
    bucket = "jegg96-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}



