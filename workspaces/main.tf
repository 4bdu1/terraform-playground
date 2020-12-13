terraform {
  backend "s3" {
    bucket = "terraform-state-pt-test"
    key    = "workspaces-example/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0dd9f0e7df0f0a138"
  instance_type = "t2.micro"
}
