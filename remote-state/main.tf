resource "aws_instance" "web"{
  ami           = "ami-0bade467599e80e4c"
  instance_type = "t2.micro"

    tags = {
      Name = "tf-test"
    }
}

