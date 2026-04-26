# wallet-service

Service in the **loyalty** domain of StayNest.

**Language:** Go · **Port:** 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wallet-service/](../../../helm/charts/wallet-service/) — Helm chart
- [manifests/loyalty/wallet-service/](../../../manifests/loyalty/wallet-service/) — Raw K8s manifests
