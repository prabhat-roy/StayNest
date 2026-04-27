# kitchen-service

Service in the fnb domain of StayNest.

Language: Go Â· Port: 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kitchen-service/](../../../helm/charts/kitchen-service/) â€” Helm chart
- [manifests/fnb/kitchen-service/](../../../manifests/fnb/kitchen-service/) â€” Raw K8s manifests
