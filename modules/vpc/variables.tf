# modules/vpc/variables.tf
variable "cidr_block" {}
variable "public_subnets" { type = list(string) }
variable "azs" { type = list(string) }
variable "name" {}

