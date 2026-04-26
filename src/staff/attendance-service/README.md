# attendance-service

Service in the **staff** domain of StayNest.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/attendance-service/](../../../helm/charts/attendance-service/) — Helm chart
- [manifests/staff/attendance-service/](../../../manifests/staff/attendance-service/) — Raw K8s manifests
