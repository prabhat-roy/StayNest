# rate-service

Service in the pms domain of StayNest.

Language: Go Â· Port: 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rate-service/](../../../helm/charts/rate-service/) â€” Helm chart
- [manifests/pms/rate-service/](../../../manifests/pms/rate-service/) â€” Raw K8s manifests
