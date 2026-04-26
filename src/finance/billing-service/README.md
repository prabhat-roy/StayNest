# billing-service

Service in the **finance** domain of StayNest.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/billing-service/](../../../helm/charts/billing-service/) — Helm chart
- [manifests/finance/billing-service/](../../../manifests/finance/billing-service/) — Raw K8s manifests
