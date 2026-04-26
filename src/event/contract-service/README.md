# contract-service

Service in the **event** domain of StayNest.

**Language:** Go · **Port:** 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-service/](../../../helm/charts/contract-service/) — Helm chart
- [manifests/event/contract-service/](../../../manifests/event/contract-service/) — Raw K8s manifests
