# linen-service

Service in the housekeeping domain of StayNest.

Language: Go Â· Port: 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/linen-service/](../../../helm/charts/linen-service/) â€” Helm chart
- [manifests/housekeeping/linen-service/](../../../manifests/housekeeping/linen-service/) â€” Raw K8s manifests
