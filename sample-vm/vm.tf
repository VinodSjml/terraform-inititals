resource "aws_instance" "web"{
  ami               = ""
  instance_type     = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
      Name = "tf-test"
    }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"

  ingress {
    description = "ssh from internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

data "aws_ami" "ami"{
  most_recent      = true
  name_regex       = "Devops-labimage-centos7-ansible"
  owners           = ["self"]
}

