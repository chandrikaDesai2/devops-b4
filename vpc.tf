#   terraform {
#   backend "s3" {
#     region = "us-east-1"
#     bucket = "devops-b4"
#     key = "terrafrom.tfstate"
#    }
# }
#     provider "aws" {
#     region = var.region
  
# }




#    resource "aws_instance" "terraform-1" {
#    ami = "ami-04b4f1a9cf54c11d0"
#    key_name = "teraaform-1"
#    instance_type = t2.micro
#    vpc_security_group_ids = [ "terraform", "default"]
#    subnet_id = aws_subnet.vpc-2-subnet.id
#    tags = {

#     Name = "terraform-1"
# }
# }
#      resource "aws_vpc" "vpc_2" {   
#     cidr_block = "10.0.0.0/22"
#     tags = {
#       name = "myvpc"
#       env = "dev" 
#     }
  
# }
#     resource "aws_subnet" "vpc-2-subnet" {
#       vpc_id = "vpc-010e1b5b904fef06c"
#       cidr_block = "10.0.0.0/24"
#       map_public_ip_on_launch = true
#       tags = {
#        name = "my_subnet"
#        env = "dev"   
#          }
#   }
#       resource "aws_internet_gateway" "vpc-2-igw" {
#       vpc_id = aws_vpc.vpc-2.id
#     } 
#       resource "aws_route_table" "vpc-2-rt" {
#         vpc_id = aws_vpc.vpc-2.id
#         route {
#             cidr_block = "10.0.0.0/24"
#             gateway_id = "igw-00178475586308ebb"
#         }
#        }
#        resource "aws_route_table_association" "route-subnet" {
#         subnet_id = "subnet-0e8d52026329a14fa"
#         route_table_id = aws_route_table.vpc-2-rt.id
         
#        }
#        variable "region" {
#         description = "us-east-1"
         
#        }

#        output "aws_instance" {
#        value = aws_instance.terraform-1.public_ip
         
#        }
       
#        output "aws_vpc" {
#        value = aws_vpc.vpc_2.id
#       }