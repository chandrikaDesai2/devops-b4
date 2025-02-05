provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "myec2" {
ami = "ami-04b4f1a9cf54c11d0"
key_name = "id_rsa"
instance_type =  "t2.micro"
security_groups = [ "default" ]
tags ={
    name = "moon-instance"
}
}
