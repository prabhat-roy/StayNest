# billing-service

Service in the finance domain of StayNest.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/billing-service/](../../../helm/charts/billing-service/) â€” Helm chart
- [manifests/finance/billing-service/](../../../manifests/finance/billing-service/) â€” Raw K8s manifests
