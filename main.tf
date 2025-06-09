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
  igw_id = module.internet_gateway.igw_id
  subnet_id = module.subnet.subnet_id
  route_table_name = var.route_table_name
}