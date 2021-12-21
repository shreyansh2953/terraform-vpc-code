
locals {
    subnet_name =["public-subnet-1-${terraform.workspace}","public-subnet-2-${terraform.workspace}","private-subnet-1-${terraform.workspace}","private-subnet-2-${terraform.workspace}"]
}
resource "aws_subnet" "subnet-terra" {
  
  count = length(var.my_subnet_cidr)
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.my_subnet_cidr[count.index]
  availability_zone = var.my_subnet_avZone[count.index]
  map_public_ip_on_launch = var.my_subnet_public_ip[count.index]
  tags = {
    Name = local.subnet_name[count.index]
  }
}