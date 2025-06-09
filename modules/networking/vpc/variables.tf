variable "vpc_cidr_block"{
    description = "CIDR block for our VPC" 
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    description = "Name for our VPC"
    default = "aws-showcase-vpc"
}