provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "smart_agri_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "smart-agri-vpc"
  }
}

resource "aws_instance" "sensor_node" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (replace with updated one)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.smart_agri_subnet.id
  tags = {
    Name = "sensor-node"
  }
}

resource "aws_subnet" "smart_agri_subnet" {
  vpc_id            = aws_vpc.smart_agri_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "smart-agri-subnet"
  }
}


