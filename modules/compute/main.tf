resource "aws_instance" "this" {
  ami                    = var.ami_id                         
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]                         
  associate_public_ip_address = true                           
  key_name               = var.key_pair_name                   

user_data = <<-EOF
  #!/bin/bash
  dnf update -y
  dnf install docker -y
  systemctl start docker
  systemctl enable docker
  usermod -aG docker ec2-user
  docker run -d -p 80:80 nginx
EOF

  tags = {
    Name = var.ec2_name
  }
}