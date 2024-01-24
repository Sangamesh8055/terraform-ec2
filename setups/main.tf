provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

module "my_webserver" {
  source = "../modules/webserver"
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/16"
  server_name = "sang"
  ami = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.micro"  
  
}
