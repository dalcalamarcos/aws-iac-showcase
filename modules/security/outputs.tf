output "sg_id" {
  description = "ID of the created Security Group"
  value       = aws_security_group.this.id
}