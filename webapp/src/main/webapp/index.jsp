AKIAYQNCCR3AGKF5N7G3
rehlSY62Twj2CdAiJn2Dl8lB0kQ+CMuZpNxEUkSB




AWSAccessKeyId=AKIAYQNCCR3AI5VOMUNY

EC2 instance

provider "aws"   {
    region = "us-east-1"
}
    resource "aws_instance" "Demo" {
        ami           = "instance_id"
        instance_type = "instance_type"
        key_name = "key_name"
        tags = {
            Name = "instance_name"
        }
    }

Ec2 instance

provider "aws"   {
    region = "clearterraform appl"
    }
    resource "aws_instance" "Demo" {
        ami           = "ami-04505e74c0741db8d"
        instance_type = "t2.micro"
        key_name = "Taiwo"
        tags = {
            Name = "Taiwo"
        }
    }

VPC

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

Subnet

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
