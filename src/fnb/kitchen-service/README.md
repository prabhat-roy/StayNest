# kitchen-service

Service in the **fnb** domain of StayNest.

**Language:** Go · **Port:** 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kitchen-service/](../../../helm/charts/kitchen-service/) — Helm chart
- [manifests/fnb/kitchen-service/](../../../manifests/fnb/kitchen-service/) — Raw K8s manifests
