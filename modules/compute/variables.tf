variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
}

variable "subnet_id" {
  description = "Subnet where EC2 will be launched"
}

variable "sg_id" {
  description = "Security Group ID to associate with the EC2"
}

variable "key_pair_name" {
  description = "SSH key pair name for EC2 access"
}

variable "ec2_name" {
  description = "Name tag for the EC2 instance"
  default     = "aws-showcase-ec2"
}