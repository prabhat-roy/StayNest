# table-reservation

Service in the **fnb** domain of StayNest.

**Language:** Go · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/table-reservation/](../../../helm/charts/table-reservation/) — Helm chart
- [manifests/fnb/table-reservation/](../../../manifests/fnb/table-reservation/) — Raw K8s manifests
