variable "ami" { #variable define for ami
  default = "ami-04d29b6f966df1537"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "name" {
  default = "ec2-instance-${var.enivironment}"
}


variable "vpc" {
  default = "192.168.0.0/16"
}

variable "public_subnet" {
  default = "192.168.1.0/24"
}


variable "private_subnet" {
  default = "192.168.10.0/24"
}
