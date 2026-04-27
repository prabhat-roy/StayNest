# partnership-service

Service in the loyalty domain of StayNest.

Language: Go Â· Port: 50222

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/partnership-service/](../../../helm/charts/partnership-service/) â€” Helm chart
- [manifests/loyalty/partnership-service/](../../../manifests/loyalty/partnership-service/) â€” Raw K8s manifests
