terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">=1.4.6"

}

	# Configure the AWS Provider
	provider "aws" {
	  region = "us-east-2"
	}

   # Configure the AWS Resource
	resource "aws_instance" "terraform" {
	  ami               = "ami-0dcc1e21636832c5d"
	  instance_type     = "t2.large"
	  availability_zone = "us-west-2a"
	  tags = {
		Name = "terraform_test"
	  }
	}
