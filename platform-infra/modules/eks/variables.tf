variable "cluster_name" {
  description = "Nazwa klastra EKS"
  type        = string
  default     = "eks-platform"
}

variable "region" {
  description = "Region AWS"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_id" {
  description = "VPC ID gdzie EKS będzie stawiany"
  type        = string
}

variable "private_subnet_ids" {
  description = "Lista private subnet IDs dla EKS"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "Lista public subnet IDs (np. dla ALB)"
  type        = list(string)
}

variable "node_group_desired_capacity" {
  description = "Desired number of nodes"
  type        = number
  default     = 2
}

variable "node_group_max_size" {
  description = "Max nodes in node group"
  type        = number
  default     = 3
}

variable "node_group_min_size" {
  description = "Min nodes in node group"
  type        = number
  default     = 1
}

variable "node_instance_type" {
  description = "EC2 instance type for nodes"
  type        = string
  default     = "t3.medium"
}
