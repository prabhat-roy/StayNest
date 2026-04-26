# folio-service

Service in the **finance** domain of StayNest.

**Language:** Go · **Port:** 50244

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/folio-service/](../../../helm/charts/folio-service/) — Helm chart
- [manifests/finance/folio-service/](../../../manifests/finance/folio-service/) — Raw K8s manifests
