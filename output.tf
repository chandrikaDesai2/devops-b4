output "aws_instance" {
    value = module.my_instance.aws_instance.module_instance.ip
}
output "aws_vpc" {
    value = module.my_vpc.aws_vpc.my_vpc.id
}
output "mysg_id" {
    value = data.aws_security_groups.mysg.id
}
output "subnet_id" {
    value = module.my_vpc.aws_subnet.my_subnet.id
  
}