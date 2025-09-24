
resource "aws_subnet" "vpc_01_subnet_01" {

    vpc_id            = aws_vpc.vpc_01.id

    cidr_block        = var.subnet_cidr

    availability_zone = "us-east-2a"

    tags = {

        Name = "VPC_01_Subnet_01"

    }
  
}



variable "subnet_cidr" {

    description = "The CIDR block for the subnet"

    type        = string

    
  
}





