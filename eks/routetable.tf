#Public RT
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.kmb_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "publicRouteTable"
  }
}

# Route table association with public subnets
resource "aws_route_table_association" "a" {
  count = length(var.public_subnets_cidr)
  subnet_id      = element(aws_subnet.public_subnet.*.id,count.index)
  route_table_id = aws_route_table.public_rt.id
}

#Private RT
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.kmb_vpc.id
    route{
        cidr_block = ""
        nat_gateway_id = 
    }
  
}

# Route table association with private subnets
resource "aws_route_table_association" "b" {
    count = length(var.private_subnets_cidr)
    subnet_id = element(aws_subnet.private_subnet.*.id,count.index)
    route_table_id = aws_route_table.private_rt.id
}