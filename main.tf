provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "example" {
  ami           = "ami-0dd9f0e7df0f0a138"
  instance_type = "t2.micro"

  tags = {
    "Name" = "terraform-example"
  }
}
