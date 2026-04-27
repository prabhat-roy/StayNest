# task-service

Service in the housekeeping domain of StayNest.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/task-service/](../../../helm/charts/task-service/) â€” Helm chart
- [manifests/housekeeping/task-service/](../../../manifests/housekeeping/task-service/) â€” Raw K8s manifests
