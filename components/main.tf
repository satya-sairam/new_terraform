resource "aws_instance" "web" {
  count          = length(var.components)
  ami            = "ami-0bb6af715826253bf"
  instance_type  = "t2.micro"

  tags           = {
    Name         = element(var.components,count.index )
  }
}

provider "aws" {
  region = "us-east-1"
}