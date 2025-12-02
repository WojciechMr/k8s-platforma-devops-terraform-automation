<<<<<<< HEAD
# k8s-platforma-devops-terraform-automation
Self-service platform for generating and deploying AWS infrastructure with Terraform. Django UI + Jinja2 generates projects, while Kubernetes Jobs run plan/apply using IRSA. GitOps (ArgoCD) + CI/CD + observability (Prometheus/Grafana/Loki). Secure, automated provisioning for dev/stage/prod environments.
=======
# Projekt K8s Platforma DevOps

Repo dla platformy do automatycznego provisioningu infrastruktury w AWS.

## Struktura repo

- platform-app: Django + frontend + generator Jinja2 + Helm charts
- platform-infra: Terraform do bootstrapa platformy (VPC/EKS/S3/DynamoDB/ECR/iam)
- tf-modules: Wersjonowane moduły Terraform (vpc, eks, rds, ecr, alb)

## Instrukcja startowa

1. Skonfiguruj AWS CLI (sandbox/dev account)
2. Utwórz repo na GitHub i podłącz lokalne
3. Uruchom terraform init/plan w platform-infra
EOL
>>>>>>> 7fec287 (infra tree deploy)
