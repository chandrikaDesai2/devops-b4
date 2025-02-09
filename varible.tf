variable "region" {
    default = "us-east-1"
  }
  variable "vpc_cidr" {
    default = "10.0.0.0/16"
  }
  variable "project" {
    default = "module_era"
   
  }
  variable "subnet_cidr" {
    default = "10.0.0.0/20"
  }
  variable "azl" {
    default = "us-east-1a"
  }
  variable "ami_id" {
    default = "ami-085ad6ae776d8f09c"
 }

 variable "instance_type" {
    default = "t2.micro"
 }
 variable "key_name" {
    default = "teraaform-1"
 }
 variable "sgid" {
    default = "sg-057dd53b80afdf2ac"
 }