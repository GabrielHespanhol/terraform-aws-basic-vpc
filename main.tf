resource "aws_vpc" "main" {
  cidr_block       = var.aws_vpc_cidr_block

  enable_dns_hostnames = var.aws_vpc_enable_dns_hostnames
  enable_dns_support = var.aws_vpc_enable_dns_support
  instance_tenancy = "default"

  tags = merge(
    {
      "Name" = var.aws_vpc_name
    },
    var.aws_vpc_tags,
  )
}