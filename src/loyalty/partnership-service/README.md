# partnership-service

Service in the **loyalty** domain of StayNest.

**Language:** Go · **Port:** 50222

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/partnership-service/](../../../helm/charts/partnership-service/) — Helm chart
- [manifests/loyalty/partnership-service/](../../../manifests/loyalty/partnership-service/) — Raw K8s manifests
