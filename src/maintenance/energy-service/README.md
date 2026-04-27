# energy-service

Service in the maintenance domain of StayNest.

Language: Go Â· Port: 50303

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/energy-service/](../../../helm/charts/energy-service/) â€” Helm chart
- [manifests/maintenance/energy-service/](../../../manifests/maintenance/energy-service/) â€” Raw K8s manifests
