provider "aws" {}

terraform {
  backend "s3" {
    bucket = "cdtf-state"
    key    = "dev/ec2/terraform.tfstate"
    region = "us-east-1"
    
  }
}

variable "instanceCount" {
    default = 2
}