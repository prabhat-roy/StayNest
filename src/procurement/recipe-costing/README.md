# recipe-costing

Service in the **procurement** domain of StayNest.

**Language:** Go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/recipe-costing/](../../../helm/charts/recipe-costing/) — Helm chart
- [manifests/procurement/recipe-costing/](../../../manifests/procurement/recipe-costing/) — Raw K8s manifests
