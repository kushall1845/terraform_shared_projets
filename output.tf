
output "server_01_public_ip" {
    description = "The public IP address of the EC2 instance"
    value       = aws_instance.server-01.public_ip
  
}