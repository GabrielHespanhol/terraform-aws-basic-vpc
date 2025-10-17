# VPC module outputs
output "my_aws_basic_vpc" {
  value = module.my_aws_basic_vpc.aws_vpc_name
}

output "my_aws_vpc_id" {
  value = module.my_aws_basic_vpc.aws_vpc_id
}