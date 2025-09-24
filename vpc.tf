
resource "aws_vpc" "vpc_01" {

    cidr_block = var.vpc_cidr

    tags = {

        Name = "VPC_01"

    }
  
}


variable "vpc_cidr" {

    description = "The CIDR block for the VPC"

    type        = string

    
  
}