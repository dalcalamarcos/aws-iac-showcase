variable "route_table_name" {
    description = "Name tag for our route table"
    default = "aws-showcase-public-rt"
}

variable "vpc_id" {
    description = "Our VPC's ID"
}

variable "igw_id" {
    description = "Our IGW's ID"
}

variable "subnet_id" {
    description = "Our Subnet's ID to associate our route table to"
}