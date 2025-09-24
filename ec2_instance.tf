
resource "aws_instance" "server-01" {

    ami           = "ami-0cfde0ea8edd312d4"  
    instance_type = "t3.micro"
    subnet_id     = aws_subnet.vpc-01-subnet-01.id
    associate_public_ip_address = true
    
   key_name      = aws_key_pair.generated_key.key_name

    #user_data = file("userdata.sh")


    provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install -y software-properties-common",
      "sudo add-apt-repository --yes --update ppa:ansible/ansible",
      "sudo apt install -y ansible"
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

    depends_on = [ aws_internet_gateway.vpc-01-igw , local_file.private_key_pem ]
  
}



/* provisioner "remote-exec" {
  inline = [
    "sudo apt update -y",
    "sudo apt install -y python3 python3-distutils curl",
    "curl -sS https://bootstrap.pypa.io/get-pip.py -o get-pip.py",
    "sudo python3 get-pip.py",
    "sudo pip3 install --upgrade pip",
    "sudo pip3 install ansible"
  ]
}
 */







