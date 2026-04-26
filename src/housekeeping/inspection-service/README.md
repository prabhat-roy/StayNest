# inspection-service

Service in the **housekeeping** domain of StayNest.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inspection-service/](../../../helm/charts/inspection-service/) — Helm chart
- [manifests/housekeeping/inspection-service/](../../../manifests/housekeeping/inspection-service/) — Raw K8s manifests
