# group-service

Service in the **crs** domain of StayNest.

**Language:** Go · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/group-service/](../../../helm/charts/group-service/) — Helm chart
- [manifests/crs/group-service/](../../../manifests/crs/group-service/) — Raw K8s manifests
