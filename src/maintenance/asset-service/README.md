# asset-service

Service in the **maintenance** domain of StayNest.

**Language:** Go · **Port:** 50301

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/asset-service/](../../../helm/charts/asset-service/) — Helm chart
- [manifests/maintenance/asset-service/](../../../manifests/maintenance/asset-service/) — Raw K8s manifests
