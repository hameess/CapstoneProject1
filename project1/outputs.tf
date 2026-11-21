output "instance_public_ip" {
  description = "Public IP address of the EC2 web server"
  value       = aws_instance.web_server.public_ip
}

output "webpage_url" {
  description = "URL to access the hosted webpage"
  value       = "http://${aws_instance.web_server.public_ip}"
}
