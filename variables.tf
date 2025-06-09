# Variables for our VPC
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}
variable "vpc_name" {
  description = "Name tag for the VPC"
}

#Variables for our Subnet
variable "subnet_cidr_block"{
  description = "CIDR block for our Subnet"
}
variable "subnet_name"{
  description = "Name tag for our Subnet"
}

#Variables for our IGW
variable "igw_name"{
  description = "Name tag for our IGW"
}

#Variables for our Route Table:
variable "route_table_name" {
  description = "Name tag for our Route Table"
}

#Variables for our SG
variable "sg_name" {
  description = "Name for our security group"
}

variable "allowed_ssh_cidr" {
  description = "IP range for allowed traffic inbound via SSH"
}

