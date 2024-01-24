terraform {
  required_version = ">= 0.12"
}

resource "aws_subnet" "web" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
}

resource "aws_instance" "server" {
  ami = var.ami
  subnet_id = aws_subnet.web.id
  instance_type = var.instance_type
  tags = {
    Name = "${var.server_name}-instance"
  }
}
