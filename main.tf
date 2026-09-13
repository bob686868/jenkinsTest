terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Free-tier eligible Ubuntu 22.04 AMI in us-east-1
resource "aws_instance" "jenkins_demo" {
  ami           = "ami-0c7217cdde317cfec" 
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Provisioned-EC2"
  }
}

output "instance_id" {
  value       = aws_instance.jenkins_demo.id
  description = "The ID of the provisioned EC2 instance"
}

output "instance_public_ip" {
  value       = aws_instance.jenkins_demo.public_ip
  description = "The public IP of the EC2 instance"
}