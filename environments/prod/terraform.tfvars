# prod environment variables

vpc_cidr_block = "your-vpc-cidr-block-prod"
subnet_cidr_block_public = "your-public-subnet-cidr-prod"
subnet_cidr_block_private = "your-private-subnet-cidr-prod"

ec2_instance_type = "t2.medium"
ec2_key_name = "your-key-name"

rds_db_name = "prod-db-name"
rds_db_user = "your-db-user"
rds_db_password = "your-db-password"
rds_security_group_id = "your-security-group-id-prod"
rds_subnet_ids = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]

alb_security_group_id = "your-alb-sg-id-prod"

