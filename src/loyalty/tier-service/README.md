# tier-service

Service in the **loyalty** domain of StayNest.

**Language:** Go · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tier-service/](../../../helm/charts/tier-service/) — Helm chart
- [manifests/loyalty/tier-service/](../../../manifests/loyalty/tier-service/) — Raw K8s manifests
