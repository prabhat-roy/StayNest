# linen-service

Service in the **housekeeping** domain of StayNest.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/linen-service/](../../../helm/charts/linen-service/) — Helm chart
- [manifests/housekeeping/linen-service/](../../../manifests/housekeeping/linen-service/) — Raw K8s manifests
