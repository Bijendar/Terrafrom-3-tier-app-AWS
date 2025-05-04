variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"  # Prod ke liye region, update karna hoga
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = ["subnet-xxxxxxx", "subnet-yyyyyyy"]  # Prod ke liye subnet IDs, yeh update karna hoga
}

variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-yyyyyyyyyyyyyyy"  # Prod ke liye AMI ID, yeh update karna hoga
}

variable "ec2_instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t3.medium"
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
  default     = "sg-yyyyyyy"  # Prod security group ID, yeh update karna hoga
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "prod-db"
}

variable "db_user" {
  description = "Database username"
  type        = string
  default     = "prod-user"
}

variable "db_password" {
  description = "Database password"
  type        = string
  default     = "prod-password"  # Prod ke liye password set karen
}

