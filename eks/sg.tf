resource "aws_security_group" "securitygroup" {
  name = "SG-1"
  description = "Security Group"
  vpc_id = aws_vpc.kmb_vpc.id
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  tags = {
    "Name" = "SG-1"
  }
}