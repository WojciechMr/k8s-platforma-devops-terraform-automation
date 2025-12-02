terraform {
  backend "s3" {
    bucket         = "wojciechm-tfstate-bucket-terraformk8sproject"
    key            = "platform-infra/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks-terraformk8sproject"
    encrypt        = true
  }
}
