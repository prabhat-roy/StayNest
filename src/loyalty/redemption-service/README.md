# redemption-service

Service in the loyalty domain of StayNest.

Language: Go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/redemption-service/](../../../helm/charts/redemption-service/) â€” Helm chart
- [manifests/loyalty/redemption-service/](../../../manifests/loyalty/redemption-service/) â€” Raw K8s manifests
