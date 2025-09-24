
resource "aws_internet_gateway" "vpc_01_igw" {

    vpc_id = aws_vpc.vpc_01.id

    tags = {

        Name = "VPC_01_IGW"

    }   
  
}

