# payment-service

Service in the finance domain of StayNest.

Language: Go Â· Port: 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payment-service/](../../../helm/charts/payment-service/) â€” Helm chart
- [manifests/finance/payment-service/](../../../manifests/finance/payment-service/) â€” Raw K8s manifests
