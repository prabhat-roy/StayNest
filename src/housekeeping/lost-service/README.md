# lost-service

Service in the **housekeeping** domain of StayNest.

**Language:** Go · **Port:** 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lost-service/](../../../helm/charts/lost-service/) — Helm chart
- [manifests/housekeeping/lost-service/](../../../manifests/housekeeping/lost-service/) — Raw K8s manifests
