#VPC Setup

## VPC
## Subnet

resource "aws_vpc" "kmb_vpc" {
  cidr_block = var.vpc_cidr

  tags = tomap({
    "Name"                                      = "terraform_kmb_vpc",
  })
}

resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnets_cidr)
  availability_zone       = element(var.azs,count.index)
  cidr_block = element(var.subnets_cidr,count.index)
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.kmb_vpc.id
  tags = tomap({
    "Name"                                      = "terraform_kmb_vpc_public_subnet",
  })
}

resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnets_cidr)
  availability_zone       = element(var.azs,count.index)
  cidr_block = element(var.subnets_cidr,count.index)
  map_public_ip_on_launch = false
  vpc_id                  = aws_vpc.kmb_vpc.id
  tags = tomap({
    "Name"                                      = "terraform_kmb_vpc_private_subnet",
  })
}

