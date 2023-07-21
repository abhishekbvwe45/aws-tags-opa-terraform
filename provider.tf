

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "dfe84e2d-1da7-4640-9581-a65293cc0880-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
