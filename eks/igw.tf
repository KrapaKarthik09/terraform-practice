#IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.kmb_vpc.id
  tags = {
    Name = "main"
  }
}