variable "igw_name" {
    description = "Name for our IGW"
    default = "aws-showcase-igw"
}

variable "vpc_id" {
    description = "VPC ID where this IGW will be attached"
}