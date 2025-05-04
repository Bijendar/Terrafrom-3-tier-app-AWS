provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = var.vpc_cidr_block
  subnet_ids  = var.subnet_ids
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = var.ec2_ami_id
  instance_type     = var.ec2_instance_type
  subnet_ids        = var.subnet_ids
  security_group_id = var.security_group_id
}

module "rds" {
  source          = "../../modules/rds"
  db_name         = var.db_name
  db_user         = var.db_user
  db_password     = var.db_password
  security_group_id = var.security_group_id
}

module "alb" {
  source           = "../../modules/alb"
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = module.vpc.subnet_ids
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "alb_url" {
  value = module.alb.alb_url
}

