module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  subnet_cidr = "192.168.0.0/22"
  public_ip   = true
}

module "ec2" {
  source         = "./modules/ec2"
  ami_id         = "ami-05b271c3f724b3835"
  instance_type  = "t3.micro"
  subnet_id      = module.vpc.subnet_id
  security_group = module.vpc.security_group
}
