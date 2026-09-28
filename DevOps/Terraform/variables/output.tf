output "public_ip" {
  value = aws_instance.vm.public_ip
}

output "instance_id" {
    value = aws_instance.vm.id 
}

output "private_ip" {
    value = aws_instance.vm.private_ip
}
