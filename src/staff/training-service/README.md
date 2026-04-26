# training-service

Service in the **staff** domain of StayNest.

**Language:** Go · **Port:** 50283

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/training-service/](../../../helm/charts/training-service/) — Helm chart
- [manifests/staff/training-service/](../../../manifests/staff/training-service/) — Raw K8s manifests
