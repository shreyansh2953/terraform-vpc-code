
locals {
    subnet_name =["public-subnet-1-${terraform.workspace}","public-subnet-2-${terraform.workspace}","private-subnet-1-${terraform.workspace}","private-subnet-2-${terraform.workspace}"]
}