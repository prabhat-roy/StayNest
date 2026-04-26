# guest-analytics

Service in the **analytics** domain of StayNest.

**Language:** Go · **Port:** 50322

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/guest-analytics/](../../../helm/charts/guest-analytics/) — Helm chart
- [manifests/analytics/guest-analytics/](../../../manifests/analytics/guest-analytics/) — Raw K8s manifests
