resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 4096

  
}

resource "aws_key_pair" "generated_key" {
  key_name   = "key"
  public_key = tls_private_key.ec2_key.public_key_openssh

  depends_on = [tls_private_key.ec2_key]
}

resource "local_file" "private_key_pem" {
  content  = tls_private_key.ec2_key.private_key_pem
  filename = "${path.module}/key.pem"
  file_permission = "0400"

  depends_on = [ aws_key_pair.generated_key ]
}


