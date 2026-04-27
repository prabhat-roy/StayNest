# tier-service

Service in the loyalty domain of StayNest.

Language: Go Â· Port: 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tier-service/](../../../helm/charts/tier-service/) â€” Helm chart
- [manifests/loyalty/tier-service/](../../../manifests/loyalty/tier-service/) â€” Raw K8s manifests
