
resource "aws_instance" "server_01" {

    ami           = "ami-0cfde0ea8edd312d4"  
    instance_type = "t3.micro"
    subnet_id     = aws_subnet.vpc_01_subnet_01.id
    associate_public_ip_address = true
    
   key_name      = aws_key_pair.generated_key.key_name

    #user_data = file("userdata.sh")


    provisioner "remote-exec" {
  inline = [
    "sudo apt update -y",
    "sudo apt install -y python3 python3-pip python3-venv python3-full",
    "sudo python3 -m pip install --upgrade pip",
    "sudo python3 -m pip install --break-system-packages ansible",
    "ansible --version"
  ]
}

  connection {
    type        = "ssh"
    user        = "ubuntu" # Use "ec2-user" for Amazon Linux
    private_key = local_file.private_key_pem.content
    host        = self.public_ip
  }



    

    tags = {

        Name = "Server-01"

    }

    depends_on = [ aws_internet_gateway.vpc_01_igw , local_file.private_key_pem ]
  
}












