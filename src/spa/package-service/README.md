# package-service

Service in the **spa** domain of StayNest.

**Language:** Go · **Port:** 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/package-service/](../../../helm/charts/package-service/) — Helm chart
- [manifests/spa/package-service/](../../../manifests/spa/package-service/) — Raw K8s manifests
