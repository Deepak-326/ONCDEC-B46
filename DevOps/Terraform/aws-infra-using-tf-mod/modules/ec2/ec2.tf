resource "aws_instance" "vm-1" {
  ami = var.ami_id 
  instance_type = var.instance_type 
  subnet_id = var.subnet_id 
  vpc_security_group_ids = [var.security_group]
  tags = {
    Name = "Machine-01"
  }
}
