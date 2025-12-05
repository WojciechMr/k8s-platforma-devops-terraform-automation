variable "vpc_cidr" {
  description = "CIDR block for the new VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.1.0.0/24","10.1.1.0/24","10.1.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.1.10.0/24","10.1.11.0/24","10.1.12.0/24"]
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default     = { Project = "eks-platform" }
}