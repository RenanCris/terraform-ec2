provider "aws" {
  region       = var.AWS_DEFAULT_REGION
  access_key   = var.AWS_ACCESS_KEY_ID
  secret_key   = var.AWS_SECRET_ACCESS_KEY
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block_vpc
  prefixo_name = "${var.prefix_enviroment} - ${local.prefixo_servicos}"
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  prefixo_name = "${var.prefix_enviroment} - ${local.prefixo_servicos}"
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id
  igw_id = module.internet_gateway.gtw_id
  prefixo_name = "${var.prefix_enviroment} - ${local.prefixo_servicos}"
}

module "subnet" {
  source = "./modules/subnet"
  cidr_block = var.cidr_block_subnet_public
  vpc_id = module.vpc.vpc_id
  availability_zone_id = var.availability_zone_id_subnet_public
  route_table_id = module.route_table.route_table_id
  prefixo_name = "${var.prefix_enviroment} - ${local.prefixo_servicos}"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
  ip_public_ssh = var.ip_public_ssh
  prefixo_name = "${var.prefix_enviroment} - ${local.prefixo_servicos}"
  name = var.name_security_group
}

module "ec2" {
  source = "./modules/ec2_instance"
  ami_id = var.ami_id_ec2
  instancy_type =  var.instancy_type_ec2
  subnet_id = module.subnet.subnet_public_id
  security_group_ids = module.security_group.security_group_id
  chave_ssh_name = var.chave_ssh_name
  file_init_execution = "setup.sh"
  size_volume_root_block = var.size_volume_root_block
  size_volume_ebs_g2 = var.size_volume_ebs_g2
  size_volume_ebs_g3 = var.size_volume_ebs_g3
  size_volume_ebs_g3_iops = var.size_volume_ebs_g3_iops
  prefixo_name = "${var.prefix_enviroment} - ${local.prefixo_servicos}"
  delete_volume = true
}