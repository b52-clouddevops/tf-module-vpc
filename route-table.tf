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

# Attach the public route table to public-subnets.
resource "aws_route_table_association" "public-rt-association" {
  subnet_id      = count = length(aws_subnet.public-subnet.*.id)
  route_table_id = aws_route_table.bar.id
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


# Attach the public route table to public-subnets.
resource "aws_route_table_association" "public-rt-association" {
  subnet_id      = aws_subnet.foo.id
  route_table_id = aws_route_table.bar.id
}