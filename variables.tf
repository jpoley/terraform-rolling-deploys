variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-1"
}

/* VPC settings */
variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "172.31.0.0/16"
}

variable "public_subnet_az1_cidr" {
  description = "CIDR for az1 public subnet"
  default     = "172.31.0.0/24"
}

variable "public_subnet_az2_cidr" {
  description = "CIDR for az2 public subnet"
  default     = "172.31.1.0/24"
}

variable "public_subnet_az3_cidr" {
  description = "CIDR for az3 public subnet"
  default     = "172.31.2.0/24"
}

variable "private_subnet_az1_cidr" {
  description = "CIDR for az1 private subnet"
  default     = "172.31.3.0/24"
}

variable "private_subnet_az2_cidr" {
  description = "CIDR for az2 private subnet"
  default     = "172.31.4.0/24"
}

variable "private_subnet_az3_cidr" {
  description = "CIDR for az3 private subnet"
  default     = "172.31.5.0/24"
}

/* Ubuntu 14.04 amis by region */
variable "amis" {
  description = "Base AMI to launch the instances with"

  default = {
    us-west-1 = "ami-049d8641"
    us-east-1 = "ami-a6b8e7ce"
    eu-west-1 = "ami-47a23a30"
  }
}

/* Packer baked AMI */
variable "ami" {
  description = "AMI Generated by Packer"
}
