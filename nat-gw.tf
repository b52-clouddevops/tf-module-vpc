# Provisions Elastic IP Needed for Nat Gateway 
resource "aws_eip" "lb" {
  instance = aws_instance.web.id
  vpc      = true
}



# Creates NAT Gateway 
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.example.id

  tags = {
    Name = "robot-${var.ENV}-ngw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}