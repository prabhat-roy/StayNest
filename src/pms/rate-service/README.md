# rate-service

Service in the **pms** domain of StayNest.

**Language:** Go · **Port:** 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rate-service/](../../../helm/charts/rate-service/) — Helm chart
- [manifests/pms/rate-service/](../../../manifests/pms/rate-service/) — Raw K8s manifests
