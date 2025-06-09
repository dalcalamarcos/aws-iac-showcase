output "igw_id" {
    description = "ID for our IGW"
    value = aws_internet_gateway.this.id
}