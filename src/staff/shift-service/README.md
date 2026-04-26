# shift-service

Service in the **staff** domain of StayNest.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/shift-service/](../../../helm/charts/shift-service/) — Helm chart
- [manifests/staff/shift-service/](../../../manifests/staff/shift-service/) — Raw K8s manifests
