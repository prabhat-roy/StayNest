# inventory-service

Service in the channel-manager domain of StayNest.

Language: Go Â· Port: 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inventory-service/](../../../helm/charts/inventory-service/) â€” Helm chart
- [manifests/channel-manager/inventory-service/](../../../manifests/channel-manager/inventory-service/) â€” Raw K8s manifests
