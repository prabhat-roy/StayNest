# occupancy-analytics

Service in the analytics domain of StayNest.

Language: Go Â· Port: 50321

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/occupancy-analytics/](../../../helm/charts/occupancy-analytics/) â€” Helm chart
- [manifests/analytics/occupancy-analytics/](../../../manifests/analytics/occupancy-analytics/) â€” Raw K8s manifests
