module "s3_state" {
  source = "./modules/s3-state"

  bucket_name         = var.bucket_name
  dynamodb_table_name = var.dynamodb_table_name
}







module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = "10.1.0.0/16"
  public_subnet_cidrs  = ["10.1.0.0/24","10.1.1.0/24","10.1.2.0/24"]
  private_subnet_cidrs = ["10.1.10.0/24","10.1.11.0/24","10.1.12.0/24"]
  region               = "eu-central-1"
  tags                 = { Project = "eks-platform" }
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}







module "eks" {
  source = "./modules/eks"

  cluster_name             = "eks-platform"
  region                   = var.aws_region
  vpc_id                   = module.vpc.vpc_id
  private_subnet_ids       = module.vpc.private_subnet_ids
  public_subnet_ids        = module.vpc.public_subnet_ids
  node_group_desired_capacity = 2
  node_group_max_size      = 3
  node_group_min_size      = 1
  node_instance_type       = "t3.medium"
}
