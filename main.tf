provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "simple_ec2" {
  ami           = "ami-0c7217cdde317cfec" # Standard Ubuntu AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Simple-EC2"
  }
}