variable "bucket_name" {
  type        = string
  description = "S3 bucket name for Terraform state"
}

variable "dynamodb_table_name" {
  type        = string
  description = "DynamoDB table for Terraform state locking"
}

variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-central-1"
}