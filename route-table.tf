# public route table
resource "aws_route_table" "my-publicrt-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
      Name = "my-publicrt-${terraform.workspace}"
  }
}

# private route table
resource "aws_route_table" "my-privatert-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw.id
  }
  tags = {
      Name = "my-privatert-${terraform.workspace}"
  }
}