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

# Application load balancer variables
variable "ssl_certificate_arn" {
  default = "arn:aws:acm:us-east-1:374861848262:certificate/545c8ff3-d29c-415c-be61-bd1b9e8b4cc5"
  description = "ssl certificate arn"
  type = string
}

# SNS topic variable
variable "operator_email" {
  default = "jegbufoama@gmail.com"
  description = "valid email address"
  type = string
}

# Auto scaling group variables
variable "launch_template_name" {
  default = "dev-launch-template"
  description = "name of the launch template"
  type = string
}

# EC2 Image ID
variable "ec2_image_id" {
  default = "ami-020e036f478d608c1"
  description = "id of the ami"
  type = string
}

# EC2 Instance Type
variable "ec2_instance_type" {
  default = "t2.micro"
  description = "EC2 instance type"
  type = string
}

# EC2 Key Pair
variable "ec2_key_pair_name" {
  default = "myec2key"
  description = "Name of ec2 key pair"
  type = string
}