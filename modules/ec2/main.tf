resource "aws_instance" "modapp" {
  ami                    = "ami-0bade467599e80e4c"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]
}

variable "sg" {}