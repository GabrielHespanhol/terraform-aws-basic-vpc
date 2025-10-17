module "my_aws_basic_vpc" {
  source             = "git::https://github.com/GabrielHespanhol/terraform-aws-basic-vpc.git?ref=main"
  aws_vpc_cidr_block = "10.0.0.0/16"
  aws_vpc_name       = "my_vpc_name"

  aws_vpc_tags = {
    Name        = "my_vpc_name"
    Environment = "dev"
  }
}