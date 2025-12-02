module "s3_state" {
  source = "./modules/s3-state"

  bucket_name         = var.bucket_name
  dynamodb_table_name = var.dynamodb_table_name
}