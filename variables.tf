# VPC CIDR
variable "aws_vpc_cidr_block" {
  description = "CIDR block for the VPC. Must be a valid CIDR, for example: 10.0.0.0/16."
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrnetmask(var.aws_vpc_cidr_block))
    error_message = "The value of aws_vpc_cidr must be a valid IPv4 CIDR Block"
  }
}

# VPC Name
variable "aws_vpc_name" {
  description = "The name to use for the 'Name' tag"
  type        = string
  default     = "vpc-main"
}

# Tags
variable "aws_vpc_tags" {
  description = "A map of additional tags from use on the VPC"
  type        = map(string)
  default     = {}
}

# DNS Hostnames support
variable "aws_vpc_enable_dns_support" {
  description = "(Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults to true."
  type        = bool
  default     = true
}

# VPC Hostname enabled
variable "aws_vpc_enable_dns_hostnames" {
  description = "(Optional) A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
  type        = bool
  default     = false
}