# asset-service

Service in the maintenance domain of StayNest.

Language: Go Â· Port: 50301

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/asset-service/](../../../helm/charts/asset-service/) â€” Helm chart
- [manifests/maintenance/asset-service/](../../../manifests/maintenance/asset-service/) â€” Raw K8s manifests
