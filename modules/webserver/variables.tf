variable "vpc_id" {
  type = string
  description = "VPC ID"
}

variable "cidr_block" {
  type = string
  description = "CIDR block Value"
}

variable "server_name" {
  type = string
  description = "web server name"
}

variable "ami" {
  type = string
  description = "Ami value"
}

variable "instance_type" {
  type = string
  description = "Type of the Instance size"
  default = "t2.micro"
}

