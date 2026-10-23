variable "project" {
  description = "Project name, used as a prefix for resource names"
  type        = string
  default     = "default-vpc"
}

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name, used as a prefix for resource names"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
