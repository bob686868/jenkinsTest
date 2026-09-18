terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "simple_ec2" {
  ami           = "ami-0fb653ca2d3203ac1" # Ubuntu 22.04 LTS for us-east-2
  instance_type = "t3.micro"            # Free Tier eligible in us-east-2

  tags = {
    Name = "Jenkins-Simple-EC2"
  }
}