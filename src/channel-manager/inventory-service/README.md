# inventory-service

Service in the **channel-manager** domain of StayNest.

**Language:** Go · **Port:** 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inventory-service/](../../../helm/charts/inventory-service/) — Helm chart
- [manifests/channel-manager/inventory-service/](../../../manifests/channel-manager/inventory-service/) — Raw K8s manifests
