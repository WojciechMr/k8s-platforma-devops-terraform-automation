variable "bucket_name" {
  description = "S3 bucket name for Terraform state"
  type        = string
}

variable "dynamodb_table_name" {
  description = "DynamoDB table for Terraform state locking"
  type        = string
}

variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-central-1"
}
