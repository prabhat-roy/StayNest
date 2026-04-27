# guest-analytics

Service in the analytics domain of StayNest.

Language: Go Â· Port: 50322

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/guest-analytics/](../../../helm/charts/guest-analytics/) â€” Helm chart
- [manifests/analytics/guest-analytics/](../../../manifests/analytics/guest-analytics/) â€” Raw K8s manifests
