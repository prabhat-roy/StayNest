# folio-service

Service in the pms domain of StayNest.

Language: Go Â· Port: 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/folio-service/](../../../helm/charts/folio-service/) â€” Helm chart
- [manifests/pms/folio-service/](../../../manifests/pms/folio-service/) â€” Raw K8s manifests
