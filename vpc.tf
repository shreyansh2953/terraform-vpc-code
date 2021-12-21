resource "aws_vpc" "my-vpc" {
  
  cidr_block = var.my_vpc_cidr
  tags ={
    Name = "${terraform.workspace}-vpc"  
  }
}