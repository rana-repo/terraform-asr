#####################################################
############### ~ EC2 Instance ~ ####################
#####################################################


resource "aws_instance" "ec2-instance-prod" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "${var.name}"

  }
}
