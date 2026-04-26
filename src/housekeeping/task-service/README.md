# task-service

Service in the **housekeeping** domain of StayNest.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/task-service/](../../../helm/charts/task-service/) — Helm chart
- [manifests/housekeeping/task-service/](../../../manifests/housekeeping/task-service/) — Raw K8s manifests
