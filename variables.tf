variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"  # Ya aap yeh dev/prod se override karenge
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "db_user" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
}


