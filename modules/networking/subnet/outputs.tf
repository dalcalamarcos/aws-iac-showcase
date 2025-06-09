output "subnet_id"{
    description = "ID of our Subnet"
    value = aws_subnet.this.id
}

# Subnet ARN isn't required for most day-to-day infrastructure,
# but exposed here for IAM/resource policy scenarios.
output "subnet_arn"{
    description = "ARN for our Subnet"
    value = aws_subnet.this.arn
}