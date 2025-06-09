output "vpc_id" {
  description = "ID of our VPC"
  value       = aws_vpc.this.id
}
