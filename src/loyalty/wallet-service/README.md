# wallet-service

Service in the loyalty domain of StayNest.

Language: Go Â· Port: 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wallet-service/](../../../helm/charts/wallet-service/) â€” Helm chart
- [manifests/loyalty/wallet-service/](../../../manifests/loyalty/wallet-service/) â€” Raw K8s manifests
