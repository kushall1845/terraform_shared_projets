
resource "aws_default_security_group" "vpc_01_default_sg" {

    vpc_id = aws_vpc.vpc_01.id


    ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


    tags = {

        Name = "VPC_01_Default_SG"

    }
  
}