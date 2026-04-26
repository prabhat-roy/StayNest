# availability-service

Service in the **crs** domain of StayNest.

**Language:** Go · **Port:** 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/availability-service/](../../../helm/charts/availability-service/) — Helm chart
- [manifests/crs/availability-service/](../../../manifests/crs/availability-service/) — Raw K8s manifests
