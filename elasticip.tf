resource "aws_eip" "my_eip" {
    depends_on = [
      aws_internet_gateway.gw
    ]
  tags = {
    Name = "${terraform.workspace}-eip"
  }
}