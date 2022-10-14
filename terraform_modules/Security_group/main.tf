resource "aws_security_group" "mysg" {
  name        = "ALLOW"
  description = "ALLOW"
  vpc_id      = "vpc-0339245704e9d28ab"

  ingress {
    description      = "ALLOW"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_all_to_public"
  }
}


output "sg_id" {
  value = aws_security_group.mysg.id
}