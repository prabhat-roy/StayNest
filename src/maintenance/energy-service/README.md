# energy-service

Service in the **maintenance** domain of StayNest.

**Language:** Go · **Port:** 50303

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/energy-service/](../../../helm/charts/energy-service/) — Helm chart
- [manifests/maintenance/energy-service/](../../../manifests/maintenance/energy-service/) — Raw K8s manifests
