# Helm Charts â€” StayNest

One chart per service. Charts are cloud-agnostic â€” Kubernetes primitives only.
Per-cloud differences live in `values-aws.yaml`, `values-gcp.yaml`, `values-azure.yaml`
which add cloud-specific annotations (IRSA / Workload Identity / Pod Identity),
storage classes, and ingress class names.

## Layout

```
helm/charts/<service>/
â”œâ”€â”€ Chart.yaml
â”œâ”€â”€ values.yaml            â† cloud-agnostic defaults
â”œâ”€â”€ values-aws.yaml        â† IRSA + EBS + ALB ingress + AWS Secrets CSI
â”œâ”€â”€ values-gcp.yaml        â† Workload Identity + pd-balanced + GCE Ingress + Secret Manager CSI
â”œâ”€â”€ values-azure.yaml      â† Pod Identity + managed-csi + AGIC + Key Vault CSI
â””â”€â”€ templates/
    â”œâ”€â”€ _helpers.tpl
    â”œâ”€â”€ deployment.yaml
    â”œâ”€â”€ service.yaml
    â””â”€â”€ serviceaccount.yaml
```

## Install

```bash
SVC=pms-service
CLOUD=aws       # or gcp, azure
helm upgrade --install $SVC helm/charts/$SVC \
  --namespace staynest \
  --create-namespace \
  -f helm/charts/$SVC/values.yaml \
  -f helm/charts/$SVC/values-$CLOUD.yaml
```

## Domains covered (17)

platform Â· pms Â· crs Â· rms Â· channel-manager Â· guest Â· housekeeping Â· fnb Â· spa Â·
event Â· loyalty Â· finance Â· procurement Â· staff Â· maintenance Â· analytics Â· identity
