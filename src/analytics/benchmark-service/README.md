# benchmark-service

Service in the **analytics** domain of StayNest.

**Language:** Go · **Port:** 50323

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/benchmark-service/](../../../helm/charts/benchmark-service/) — Helm chart
- [manifests/analytics/benchmark-service/](../../../manifests/analytics/benchmark-service/) — Raw K8s manifests
