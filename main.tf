provider "aws" {
  
}


resource "aws_vpc" "mandu" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "mandu_vpc"
    }
  
}


resource "aws_subnet" "mandu_subnet" {
    vpc_id = aws_vpc.mandu.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "mandusubnet"
    }
  
}