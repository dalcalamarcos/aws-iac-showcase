module "vpc" {
  source = "./modules/networking/vpc"
  vpc_cidr_block  = var.vpc_cidr_block
  vpc_name = var.vpc_name
}

module "subnet" {
  source = "./modules/networking/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr_block  = var.subnet_cidr_block
  subnet_name = var.subnet_name
}

module "igw" {
  source = "./modules/networking/internet_gateway"
  vpc_id = module.vpc.vpc_id
  igw_name = var.igw_name
}

module "route_table" {
  source = "./modules/networking/route_table"
  vpc_id = module.vpc.vpc_id
  igw_id = module.igw.igw_id
  subnet_id = module.subnet.subnet_id
  route_table_name = var.route_table_name
}

module "security_group" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr
  sg_name = var.sg_name
}

module "ec2" {
  source         = "./modules/compute"
  ami_id         = var.ami_id
  subnet_id      = module.subnet.subnet_id
  sg_id          = module.security_group.sg_id
  key_pair_name  = var.key_pair_name
  ec2_name       = var.ec2_name
}