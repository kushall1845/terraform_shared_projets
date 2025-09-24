

resource "aws_default_route_table" "vpc_01_def_rt" {

    default_route_table_id = aws_vpc.vpc_01.default_route_table_id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.vpc_01_igw.id
  
     }

     tags = {

        Name = "VPC_01_Default_RT"  

}

}