resource "aws_subnet" "main" {
  
  count      = length(var.PUBLIC_SUBNET_CIDR)
  vpc_id     = aws_vpc.main.id
  cidr_block = elemtn()

  tags = {
    Name = "Main"
  }
}

# Count & Element are complementing functions; Count tells the number of times the loop has to run & element tells the item to picked from that iteration.