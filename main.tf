terraform {
  backend "s3" {
    bucket = "devops-b4"
    key = "module_terrafrom.tfstate"
    region = "us-east-1"
     }
}


module "my_vpc" {
    source = "./vpc"
    vpc_cidr = var.vpc_cidr
    project = var.project
    subnet_cidr = var.subnet_cidr
    azl = var.azl
}
module "my_instance" {
    source = "./instance"
    ami_id = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    sgid = var.sgid
    subnet_id = module.my_vpc.aws_subnet.my_subnet.id
  }