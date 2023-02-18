# Creates peering between robot vpc to Default VPC

resource "aws_vpc_peering_connection" "peering" {
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.DEFAULT_VPC_CIDR
}