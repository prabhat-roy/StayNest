# booking-service

Service in the **crs** domain of StayNest.

**Language:** Go · **Port:** 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/booking-service/](../../../helm/charts/booking-service/) — Helm chart
- [manifests/crs/booking-service/](../../../manifests/crs/booking-service/) — Raw K8s manifests
