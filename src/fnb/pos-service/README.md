# pos-service

Service in the **fnb** domain of StayNest.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pos-service/](../../../helm/charts/pos-service/) — Helm chart
- [manifests/fnb/pos-service/](../../../manifests/fnb/pos-service/) — Raw K8s manifests
