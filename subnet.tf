
resource "aws_subnet" "vpc-01-subnet-01" {

    vpc_id            = aws_vpc.vpc-01.id

    cidr_block        = var.subnet_cidr

    availability_zone = "us-east-2a"

    tags = {

        Name = "VPC-01-Subnet-01"

    }
  
}



variable "subnet_cidr" {

    description = "The CIDR block for the subnet"

    type        = string

    
  
}





