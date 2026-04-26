# retail-service

Service in the **spa** domain of StayNest.

**Language:** Go · **Port:** 50183

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/retail-service/](../../../helm/charts/retail-service/) — Helm chart
- [manifests/spa/retail-service/](../../../manifests/spa/retail-service/) — Raw K8s manifests
