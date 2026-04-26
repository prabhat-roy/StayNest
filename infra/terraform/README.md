# Terraform — StayNest Multi-Cloud Infrastructure

Each cloud has a **complete, standalone** deployment path. A team can pick **AWS,
GCP, or Azure** and bring up the entire StayNest platform on it without depending
on the other clouds.

## Layout

```
infra/terraform/
├── aws/        ← AWS — VPC, EKS, RDS Postgres, ElastiCache, MSK Kafka, S3, KMS, Secrets Manager
├── gcp/        ← GCP — VPC, GKE, Cloud SQL, Memorystore, Pub/Sub, GCS, KMS, Secret Manager
├── azure/      ← Azure — VNet, AKS, Azure DB for PostgreSQL, Azure Cache, Event Hubs, Blob, Key Vault
└── modules/    ← Cross-cloud shared modules (naming, tagging, OIDC discovery)
```

Each cloud directory is a standalone Terraform root module. `terraform init && terraform apply`
in any of them brings up a full StayNest-ready cluster on that cloud.

## Cloud-equivalent services

| Capability        | AWS                    | GCP                              | Azure                          |
|-------------------|------------------------|----------------------------------|--------------------------------|
| Kubernetes        | EKS                    | GKE                              | AKS                            |
| PostgreSQL        | RDS for Postgres       | Cloud SQL for Postgres           | Azure Database for PostgreSQL  |
| Cache (Redis)     | ElastiCache for Redis  | Memorystore for Redis            | Azure Cache for Redis          |
| Kafka             | MSK                    | Confluent / self-managed         | Event Hubs (Kafka surface)     |
| Object storage    | S3                     | GCS                              | Blob Storage                   |
| Secrets           | Secrets Manager + KMS  | Secret Manager + KMS             | Key Vault                      |
| Identity (cluster)| IRSA via OIDC          | Workload Identity                | Pod Identity (Entra ID)        |
| Egress / DNS      | Route53 + NLB          | Cloud DNS + L4                   | Azure DNS + Standard LB        |
| Time-series       | Timestream             | BigQuery / Self-managed Timescale | Self-managed TimescaleDB      |

## Independence guarantees

- No remote-state sharing across clouds — each cloud has its own backend
- No assumed global resource names — every resource is namespaced by cloud + env
- Helm values for a given cloud (`helm/charts/<service>/values-{aws,gcp,azure}.yaml`)
  reference only that cloud's primitives.

## Apply

```bash
# AWS
cd infra/terraform/aws && terraform init && terraform apply -var-file=prod.tfvars

# GCP
cd infra/terraform/gcp && terraform init && terraform apply -var-file=prod.tfvars

# Azure
cd infra/terraform/azure && terraform init && terraform apply -var-file=prod.tfvars
```

## OpenTofu

The same modules apply with OpenTofu. CI runs both Terraform and OpenTofu plan to
ensure compatibility (see `ci/` pipelines).
