provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "simple_ec2" {
  ami           = "ami-0fb653ca2d3203ac1" # Standard Ubuntu 22.04 AMI for us-east-2
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Simple-EC2"
  }
}