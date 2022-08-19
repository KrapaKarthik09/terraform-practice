# resource "aws_subnet" "nat_gateway" {
#   count = length(var.private_subnets_cidr)
#   availability_zone = element(var.azs,count.index)
#   cidr_block = element(var.private_subnets_cidr,count.index)
#   vpc_id = aws_vpc.kmb_vpc.id
#   tags = {
#     "Name" = "NATGateway"
#   }
# }

resource "aws_nat_gateway" "nat_gateway" {
  count = length(var.private_subnets_cidr)
  subnet_id = element(var.private_subnets_cidr,count.index)
}