resource "aws_instance" "web"{
  ami           = "data"
  instance_type = "t2.micro"

    tags = {
      Name = "tf-test"
    }
}


