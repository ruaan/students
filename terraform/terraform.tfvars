## Project
name = "students"
tags = {
  "terraform" = "True"
  "createdBy" = "Nadzir"
}

## Networking
vpc_cidr        = "10.0.0.0/16"
azs             = ["ap-southeast-1a", "ap-southeast-1b"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
private_subnets = ["10.0.103.0/24", "10.0.104.0/24"]

## EC2
ami               = "ami-0b1e534a4ff9019e0"
ec2_instance_type = "t2.micro"
key_name          = "nadzir"

## Database
db_instance_type = "db.t3.micro"
db_username      = "user"
db_password      = "password"
