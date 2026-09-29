resource "aws_vpc" "vnet" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "vpc-tf-modules"
  }
}

resource "aws_subnet" "pub" {
    vpc_id = aws_vpc.vnet.id 
    availability_zone = "ap-southeast-1a"
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = var.public_ip
    tags = {
        Name = "public-subnet"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vnet.id 
    tags = {
        Name = "igw-vpc-tf"
    }
}

resource "aws_route_table" "rt-1" {
  vpc_id = aws_vpc.vnet.id 
  tags = {
    Name = "rt-public"
  }

  route {
    gateway_id = aws_internet_gateway.igw.id 
    cidr_block = "0.0.0.0/0"
  }
}


resource "aws_route_table_association" "rta" {
  route_table_id = aws_route_table.rt-1.id 
  subnet_id = aws_subnet.pub.id 
}


resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.vnet.id 
  name = "firewall-vpc-tf-modules"

  ingress {
    from_port = 22 
    to_port = 22 
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    egress {
    from_port = 0 
    to_port = 0 
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

}

}
