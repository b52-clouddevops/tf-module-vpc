output "VPC_ID" {
    value = aws_vpc.main.id 
}

output "VPC_CIDR" {
    value = aws_vpc.main.cidr_block
}

output "PRIVATE_SUBNET" {
    value = aws_vpc.main.cidr_block
}