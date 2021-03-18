################ Virtual Private Cloud ################

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc

  tags = {
    "Name" = "vpc"
  }
}

################ Public Subnet ################

resource "aws_subnet" "public_subnet" {

  #vpc_id = var.vpc_id
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_subnet

  tags = {
    "Name" = "public_subnet"
  }
}

################ Private Subnet ################

resource "aws_subnet" "private_subnet" {

  #vpc_id = "${var.vpc_id}"
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet
  tags = {
    "Name" = "private_subnet"
  }
}
