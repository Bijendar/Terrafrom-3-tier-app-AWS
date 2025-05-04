variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 2
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch EC2 instances in"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID to attach"
  type        = string
}

variable "key_name" {
  description = "SSH key name to access EC2"
  type        = string
}

