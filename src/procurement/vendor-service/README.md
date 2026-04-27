# vendor-service

Service in the procurement domain of StayNest.

Language: Go Â· Port: 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vendor-service/](../../../helm/charts/vendor-service/) â€” Helm chart
- [manifests/procurement/vendor-service/](../../../manifests/procurement/vendor-service/) â€” Raw K8s manifests
