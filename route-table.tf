# Creating Public Route Table

resource "aws_route_table" "exapublic-rtmple" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "robot-public-"
  }
}