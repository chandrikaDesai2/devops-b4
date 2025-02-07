
provider "aws" {
region = "us-east-1"
} 
resource "aws_instance" "terraform-1" {
ami = "ami-04b4f1a9cf54c11d0"
key_name = "teraaform-1"
instance_type = t2.micro
vpc_security_group_ids = [ "terraform", "default"]
tags = {

Name = "terraform-1"
}
 }