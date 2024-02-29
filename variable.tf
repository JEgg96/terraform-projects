#VPC variables
variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "VPC cidr block"
  type = string
}

variable "public_subnet_az1_cidr" {
  default = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type = string
}

variable "public_subnet_az2_cidr" {
  default = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type = string
}

variable "private_app_subnet_az1_cidr" {
  default = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type = string
}

variable "private_app_subnet_az2_cidr" {
  default = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type = string
}

variable "private_data_subnet_az1_cidr" {
  default = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type = string
}

variable "private_data_subnet_az2_cidr" {
  default = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type = string
}

#Security groups variable

variable "ssh_location" {
  default = "0.0.0.0/0"
  description = "IP address that can SSH into ec2 instances"
  type = string
}

#RDS Variables
variable "Database_Snapshot_Identifier" {
  default = "arn:aws:rds:us-east-1:374861848262:snapshot:fleetcart-final-snapshot"
  description = "Database Snapshot ARN"
  type = string
}

#Database Instance Class
variable "Database_instance_class" {
  default = "db.t2.micro"
  description = "Database instance type"
  type = string
}

#Database Instance Identifier
variable "Database_instance_identifier" {
  default = "dev-rds-db"
  description = "Database instance identifier"
  type = string
}

# Multi-AZ-Deployment
variable "Multi-AZ-Deployment" {
  default = "false"
  description = "Create a stand-by instance"
  type = bool
}