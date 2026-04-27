# benchmark-service

Service in the analytics domain of StayNest.

Language: Go Â· Port: 50323

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/benchmark-service/](../../../helm/charts/benchmark-service/) â€” Helm chart
- [manifests/analytics/benchmark-service/](../../../manifests/analytics/benchmark-service/) â€” Raw K8s manifests
