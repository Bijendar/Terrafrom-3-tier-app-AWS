provider "aws" {
  region = var.aws_region
}


resource "aws_security_group" "main_sg" {
  name        = "main-sg"
  description = "Main security group"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "main-sg"
  }
}


module "vpc" {
  source          = "../../modules/vpc"
  cidr_block      = var.vpc_cidr_block
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
  name            = "dev-vpc-terraform-demo"
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = var.ec2_ami_id
  instance_type     = var.ec2_instance_type
  subnet_id         = module.vpc.public_subnet_ids[0]  # EC2 uses public sebnet
  security_group_id = aws_security_group.main_sg.id
  key_name = var.ec2_key_name
}

module "rds" {
  source          = "../../modules/rds"
  db_name         = var.db_name
  db_user         = var.db_user
  db_password     = var.db_password
  security_group_id = aws_security_group.main_sg.id
  subnet_ids        = module.vpc.private_subnet_ids
}

module "alb" {
  source           = "../../modules/alb"
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = module.vpc.public_subnet_ids
  security_group_id = aws_security_group.main_sg.id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_ids" {
  value =  module.ec2.ec2_instance_ids
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "alb_url" {
  value = module.alb.alb_url
}

