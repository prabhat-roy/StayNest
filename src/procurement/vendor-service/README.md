# vendor-service

Service in the **procurement** domain of StayNest.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vendor-service/](../../../helm/charts/vendor-service/) — Helm chart
- [manifests/procurement/vendor-service/](../../../manifests/procurement/vendor-service/) — Raw K8s manifests
