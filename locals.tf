# Set subnet_name and vpc_name
locals {
  tags = merge(
    var.aws_vpc_tags,
    {
      "Name" = var.aws_vpc_name,
    }
  )

  public_subnet_name  = "${local.tags["Name"]}-public-subnet"
  private_subnet_name = "${local.tags["Name"]}-private-subnet"
  vpc_name            = "${local.tags["Name"]}-vpc"
}

# Set CIDR Block for subnet
locals {
  subnet_cidr = cidrsubnets(var.aws_vpc_cidr_block, 8, 8)
}