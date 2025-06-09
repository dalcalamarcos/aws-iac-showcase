variable "subnet_cidr_block" {
    description = "CIDR block IP range for our Subnet"
    default = "10.0.1.0/24"
}

variable "subnet_name" {
    description = "Name for our Subnet"
    default = "aws-showcase-subnet"
}

variable "vpc_id" {
  description = "VPC ID where this subnet will be created"
}