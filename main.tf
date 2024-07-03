terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.56.0"
    }
  }
  backend "s3" {
    bucket = "terraform-s3-bucket-srikanth"
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "mytesttable"
  }
}



provider "aws" {
  region = var.region

}


resource "aws_instance" "ec2-test" {
  ami           = var.ami
  instance_type = var.instance_type

}



