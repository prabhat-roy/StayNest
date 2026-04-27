# folio-service

Service in the finance domain of StayNest.

Language: Go Â· Port: 50244

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/folio-service/](../../../helm/charts/folio-service/) â€” Helm chart
- [manifests/finance/folio-service/](../../../manifests/finance/folio-service/) â€” Raw K8s manifests
