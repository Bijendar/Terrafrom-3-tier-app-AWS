# dev environment variables

# VPC Module Variables
vpc_cidr_block = "10.0.0.0/16"


public_subnets  = ["10.0.1.0/24","10.0.2.0/24"]
private_subnets = ["10.0.3.0/24","10.0.4.0/24"]

# EC2 Module Varibles
ec2_instance_type = "t2.micro"
ec2_key_name = "Terraform-Demo"
ec2_ami_id = "ami-08c40ec9ead489470"
ec2_instance_count = 4

azs = ["us-east-1a","us-east-1b"]

# RDS Module Variables
db_name = "Terrafrom-Demodb"
db_user = "Terraform"
db_password = "terraform"
subnet_ids = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
