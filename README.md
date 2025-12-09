# K8s DevOps Platform

Self-service platform for generating and deploying AWS infrastructure using Terraform.  
Django UI + Jinja2 generates project templates, while Kubernetes Jobs execute `terraform plan`/`apply` securely using IRSA.  
GitOps (ArgoCD) + CI/CD pipelines + observability (Prometheus/Grafana/Loki) enable automated, safe provisioning for dev, stage, and prod environments.

## Repository Structure

- **platform-app**: Django backend + frontend + Jinja2 Terraform generator + Helm charts  
- **platform-infra**: Terraform for bootstrapping the platform (VPC, EKS, S3/DynamoDB, ECR, IAM)  
- **tf-modules**: Versioned Terraform modules (VPC, EKS, RDS, ECR, ALB, etc.)

## Getting Started

1. Configure AWS CLI (sandbox or dev account)  
2. Create a GitHub repository and connect your local project  
3. Run `terraform init` and `terraform plan` in the `platform-infra` directory...

