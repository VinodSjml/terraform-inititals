data "aws_ami" "ami"{
  most_recent      = true
  name_regex       = "Devops-labimage-centos7-ansible"
  owners           = ["self"]
}

resource "aws_instance" "web"{

  count         = length(var.instances)  
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"

    tags = {
      Name = "${var.instances[count.index]}"
    }
}

output "private_ip" {
  value = aws_instance.web.*.private_dns
}

variable "instances" {
  default = ["cart", "catalogue", "user"]
}



