# Module outputs
output "aws_vpc_cidr" {
  value = var.aws_vpc_cidr
}

output "aws_vpc_name" {
  value = var.vpc_name
}

output "aws_vpc_arn" {
  value = aws_vpc.main.arn
}