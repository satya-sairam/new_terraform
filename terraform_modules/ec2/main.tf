resource "aws_instance" "my_ec2" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.SG_ID_FROM_MODULE]

  tags = {
    Name = "My_ec2"
  }
}