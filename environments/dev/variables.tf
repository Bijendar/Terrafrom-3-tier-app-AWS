variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# Variable for VPC module req
variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  type = list(string)
  description = "List of availability zones"
}
variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = ["subnet-xxxxxxx", "subnet-yyyyyyy"]  # Dev ke liye subnet IDs, yeh update karna hoga
}

# Variables for EC2 module reuquired  
variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-xxxxxxxxxxxxxxx"  # Dev ke liye AMI ID, yeh update karna hoga
}

variable "ec2_key_name" {     # ye ec2 ke liye hai 
  description = "SSH key name to access EC2"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}


variable "ec2_instance_count" {
  description = "Number of EC2 instaces"
  type = number
  default = 2

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

