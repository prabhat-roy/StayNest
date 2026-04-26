# commission-service

Service in the **finance** domain of StayNest.

**Language:** Go · **Port:** 50243

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/commission-service/](../../../helm/charts/commission-service/) — Helm chart
- [manifests/finance/commission-service/](../../../manifests/finance/commission-service/) — Raw K8s manifests
