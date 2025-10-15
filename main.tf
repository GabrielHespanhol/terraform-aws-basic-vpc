resource "aws_vpc" "main" {
  cidr_block       = var.aws_vpc_cidr
  instance_tenancy = "default"

  tags = merge(
    {
      "Name" = var.vpc_name
    },
    var.tags,
  )
}