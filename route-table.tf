# Creating Public Route Table

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "robot-${var.ENV}-public-rt"
  }
}

# Creating Private Route Table

# resource "aws_route_table" "private-rt" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block = var.VPC_CIDR
#     gateway_id = aws_internet_gateway.igw.id
#   }

#   tags = {
#     Name = "robot-${var.ENV}-private-rt"
#   }
# }