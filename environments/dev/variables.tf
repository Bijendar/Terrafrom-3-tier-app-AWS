variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = ["subnet-xxxxxxx", "subnet-yyyyyyy"]  # Dev ke liye subnet IDs, yeh update karna hoga
}

variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-xxxxxxxxxxxxxxx"  # Dev ke liye AMI ID, yeh update karna hoga
}

variable "ec2_instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
  default     = "sg-xxxxxxxx"  # Dev security group ID, yeh update karna hoga
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "dev-db"
}

variable "db_user" {
  description = "Database username"
  type        = string
  default     = "dev-user"
}

variable "db_password" {
  description = "Database password"
  type        = string
  default     = "dev-password"  # Dev ke liye password set karen
}

