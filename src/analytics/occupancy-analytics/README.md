# occupancy-analytics

Service in the **analytics** domain of StayNest.

**Language:** Go · **Port:** 50321

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/occupancy-analytics/](../../../helm/charts/occupancy-analytics/) — Helm chart
- [manifests/analytics/occupancy-analytics/](../../../manifests/analytics/occupancy-analytics/) — Raw K8s manifests
