variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR block for Subnet"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}
