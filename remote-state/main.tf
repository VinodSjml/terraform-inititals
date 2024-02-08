data "aws_ami" "ami"{
  most_recent      = true
  name_regex       = "Devops-labimage-centos7-ansible"
  owners           = ["self"]
}

resource "aws_instance" "web"{

  count         = var.instanceCount  
  ami           = "data.aws_ami.ami.image_id"
  instance_type = "t2.micro"

    tags = {
      Name = "tf-test-${count.index+1}"
    }
}



