# invoice-service

Service in the **finance** domain of StayNest.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/invoice-service/](../../../helm/charts/invoice-service/) — Helm chart
- [manifests/finance/invoice-service/](../../../manifests/finance/invoice-service/) — Raw K8s manifests
