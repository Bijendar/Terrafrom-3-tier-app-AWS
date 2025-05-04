variable "vpc_id" {
  description = "VPC ID for ALB"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for ALB"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group for ALB"
  type        = string
}

