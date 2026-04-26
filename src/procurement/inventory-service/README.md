# inventory-service

Service in the **procurement** domain of StayNest.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inventory-service/](../../../helm/charts/inventory-service/) — Helm chart
- [manifests/procurement/inventory-service/](../../../manifests/procurement/inventory-service/) — Raw K8s manifests
