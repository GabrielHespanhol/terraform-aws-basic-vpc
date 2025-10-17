# Module outputs
output "aws_vpc_cidr_block" {
  value = var.aws_vpc_cidr_block
}

output "aws_vpc_name" {
  value = var.aws_vpc_name
}

output "this_vpc_arn" {
  value = aws_vpc.main.arn
}

output "aws_vpc_id" {
  value = aws_vpc.main.id
}