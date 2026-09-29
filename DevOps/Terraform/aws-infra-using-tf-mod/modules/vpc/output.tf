output "subnet_id" {
    value = aws_subnet.pub.id
}

output "security_group" {
  value = aws_security_group.sg.id
}
