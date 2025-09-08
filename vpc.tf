
resource "aws_vpc" "vpc-01" {

    cidr_block = var.vpc_cidr

    tags = {

        Name = "VPC-01"

    }
  
}


variable "vpc_cidr" {

    description = "The CIDR block for the VPC"

    type        = string

    
  
}