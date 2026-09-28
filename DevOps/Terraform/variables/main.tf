resource "aws_instance" "vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = var.tags
  vpc_security_group_ids = [aws_security_group.sg.id]
  user_data              = <<-EOF
      #!/bin/bash
      sudo -i 
      yum update -y 
      yum install httpd -y 
      systemctl start httpd 
      systemctl enable httpd 
      echo "Hi Terraform this side" > /var/www/html/index.html 
      EOF
}

resource "aws_security_group" "sg" {
  name        = "first-tf-sg"
  vpc_id      = "vpc-079cb5d4718c9e695"      # copy default vpc id
  description = "test-sg"

  # inbound rule = ingress

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #outbound rule= egress

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
}
