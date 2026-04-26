# redemption-service

Service in the **loyalty** domain of StayNest.

**Language:** Go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/redemption-service/](../../../helm/charts/redemption-service/) — Helm chart
- [manifests/loyalty/redemption-service/](../../../manifests/loyalty/redemption-service/) — Raw K8s manifests
