variable "name" {
  type        = string
  description = "Name to be used in the resources"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC cidr range"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones to provisioned the ec2 and database"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of cidr range for private subnets"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of cidr range for public subnets"
}

variable "ami" {
  type        = string
  description = "AMI for EC2 Instance"
}

variable "tags" {
  type        = map(string)
  description = "Tags for provisioned resources"
}

variable "ec2_instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "db_instance_type" {
  type        = string
  description = "DB instance type"
}

variable "key_name" {
  type        = string
  description = "Key name for EC2 instance"
  default     = null
}

variable "db_username" {
  type        = string
  description = "Username for database"
}

variable "db_password" {
  type        = string
  description = "Password for database"
}

