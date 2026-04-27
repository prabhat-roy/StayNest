# lost-service

Service in the housekeeping domain of StayNest.

Language: Go Â· Port: 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lost-service/](../../../helm/charts/lost-service/) â€” Helm chart
- [manifests/housekeeping/lost-service/](../../../manifests/housekeeping/lost-service/) â€” Raw K8s manifests
