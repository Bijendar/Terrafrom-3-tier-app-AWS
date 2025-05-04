output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "ec2_instance_ids" {
  description = "IDs of EC2 instances"
  value       = module.ec2.instance_ids
}

output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = module.rds.db_endpoint
}

output "alb_url" {
  description = "URL of the Application Load Balancer"
  value       = module.alb.alb_url
}

