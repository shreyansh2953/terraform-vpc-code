
resource "aws_route_table_association" "pu" {
  count = length(var.my_subnet_cidr)-2
  subnet_id      = aws_subnet.subnet-terra[count.index].id
  route_table_id = aws_route_table.my-publicrt-table.id
}

resource "aws_route_table_association" "pr1" {

  subnet_id      = aws_subnet.subnet-terra[2].id
  route_table_id = aws_route_table.my-privatert-table.id
}

resource "aws_route_table_association" "pr2" {

  subnet_id      = aws_subnet.subnet-terra[3].id
  route_table_id = aws_route_table.my-privatert-table.id
}
