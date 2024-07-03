terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.0"
    }
  }
}

provider "aws" {
  region = var.region
  
}


resource "aws_instance" "ec2-test" {
    ami = var.ami
    instance_type = var.instance_type

}



