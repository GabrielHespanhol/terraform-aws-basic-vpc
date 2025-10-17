# Module outputs
output "aws_vpc_cidr_block" {
  value = var.aws_vpc_cidr_block
  description = "VPC CIDR Block definition"
}

output "aws_vpc_name" {
  value = var.aws_vpc_name
  description = "VPC name definition"
}

output "this_vpc_arn" {
  value = aws_vpc.main.arn
  description = "VPC ARN"
}

output "aws_vpc_id" {
  value = aws_vpc.main.id
  description = "VPC ID"
}

output "private_subnet_arn" {
  value       = aws_subnet.private.arn
  description = "Private subnet CIDR block"
}

output "private_subnet_cird" {
  value       = aws_subnet.private.cidr_block
  description = "Public subnet CIDR block"
}