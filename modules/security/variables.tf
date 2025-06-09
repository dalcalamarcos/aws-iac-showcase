variable "sg_name" {
  description = "Name for the security group"
  default = "aws-showcase-sg"
}

variable "sg_description" {
  description = "Description for the security group"
  default     = "Allow SSH and HTTP access"
}

variable "vpc_id" {
  description = "VPC ID where the SG will be created"
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instance"
}