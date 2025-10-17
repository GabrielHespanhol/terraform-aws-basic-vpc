resource "aws_vpc" "main" {
  cidr_block = var.aws_vpc_cidr_block

  enable_dns_hostnames = var.aws_vpc_enable_dns_hostnames
  enable_dns_support   = var.aws_vpc_enable_dns_support
  instance_tenancy     = "default"

  tags = merge(
    var.aws_vpc_tags,
    {
      "Name" = var.aws_vpc_name
    }

  )
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = local.subnet_cidr[0]

  tags = merge(
    var.aws_vpc_tags,
    {
      "Name" = local.public_subnet_name
    }
  )
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = local.subnet_cidr[1]

  tags = merge(
    var.aws_vpc_tags,
    {
      "Name" = local.private_subnet_name
    }
  )
}