module "gabriel_aws_basic_vpc" {
  source       = "git::https://github.com/GabrielHespanhol/terraform-aws-basic-vpc.git?ref=v0.1.0" # Module repo url
  aws_vpc_cidr = "192.168.100.0/24" # VPC CIDR block
  vpc_name     = "first_vpc" # VPC name

  tags = {
    Name        = "first_vpc"
    Environment = "dev"
  }
}