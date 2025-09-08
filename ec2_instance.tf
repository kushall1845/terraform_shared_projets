
resource "aws_instance" "server-01" {

    ami           = "ami-0cfde0ea8edd312d4"  
    instance_type = "t3.micro"
    subnet_id     = aws_subnet.vpc-01-subnet-01.id
    associate_public_ip_address = true
    key_name = "pemkeyohio"

    #user_data = file("userdata.sh")

    tags = {

        Name = "Server-01"

    }

    depends_on = [ aws_internet_gateway.vpc-01-igw  ]
  
}



