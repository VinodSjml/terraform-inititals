provider "aws" {}

terraform {
  backend "s3" {
    bucket = "cdtf-state"
    key    = "tfmodules/terraform.tfstate"
    region = "us-east-1"
  }
}