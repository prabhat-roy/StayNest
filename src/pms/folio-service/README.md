# folio-service

Service in the **pms** domain of StayNest.

**Language:** Go · **Port:** 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/folio-service/](../../../helm/charts/folio-service/) — Helm chart
- [manifests/pms/folio-service/](../../../manifests/pms/folio-service/) — Raw K8s manifests
