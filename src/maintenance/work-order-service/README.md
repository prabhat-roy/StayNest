# work-order-service

Service in the maintenance domain of StayNest.

Language: Go Â· Port: 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/work-order-service/](../../../helm/charts/work-order-service/) â€” Helm chart
- [manifests/maintenance/work-order-service/](../../../manifests/maintenance/work-order-service/) â€” Raw K8s manifests
