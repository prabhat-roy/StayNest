# inventory-service

Service in the procurement domain of StayNest.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inventory-service/](../../../helm/charts/inventory-service/) â€” Helm chart
- [manifests/procurement/inventory-service/](../../../manifests/procurement/inventory-service/) â€” Raw K8s manifests
