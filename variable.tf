variable "my_region" {
    description = "region"
    type = string
    default =   ""
}

variable "my_vpc_cidr" {
    description = "my vpc cidr"
    type = string
  
}




variable "my_subnet_cidr" {
    description = "cidr block list"
    type = list(string)
    
  
}




variable "my_subnet_avZone" {
    description = "avZone"
    type = list(string)

  
}



variable "my_subnet_public_ip" {
    description = "subnet public ip"
    type = list(bool)
  
}


