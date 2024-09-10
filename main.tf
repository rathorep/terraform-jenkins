terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}

resource "aws_instance" "name" {
  ami               = "ami-0c2af51e265bd5e0e"
  instance_type     = "t2.micro"
  availability_zone = var.availability
  tags = {
    Name = "RegionalServer"
  }
}

