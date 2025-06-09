output ec2_instance_id {
  value       = aws_instance.this.id
  description = "ID for our EC2 instance"
}

output ec2_instance_ip {
  value       = aws_instance.this.public_ip
  description = "Public IP for our EC2 instance"
}
