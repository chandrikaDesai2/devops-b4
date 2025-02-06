
provider "aws" {
 region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "vpc_2" {
  cidr_block = "10.0.0.0/22"

  tags = {
    Name = "vpc_2"
    env = "dev"
  }
}
#create a subnet
resource "aws_subnet" "vpc-2-subnet" {
  vpc_id     = aws_vpc.vpc_2.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "vpc-2-subnet"
    env = "dev" 
  }
}
resource "aws_internet_gateway" "vpc-2-igw" {
  vpc_id = aws_vpc.vpc_2.id
  
}
resource "aws_route_table" "vpc-2-rt" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = "10.0.0.0/22"
    gateway_id = aws_internet_gateway.example.id
  }
}

resource "aws_route_table_association" "route-subnet" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.vpc-2-rt.id
}
