terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.32.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}



resource "aws_instance" "foo" {
  ami           = "ami-038f1ca1bd58a5790" 
  instance_type = "t2.micro"

  }
