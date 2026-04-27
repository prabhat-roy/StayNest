# concierge-service

Service in the guest domain of StayNest.

Language: Go Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/concierge-service/](../../../helm/charts/concierge-service/) â€” Helm chart
- [manifests/guest/concierge-service/](../../../manifests/guest/concierge-service/) â€” Raw K8s manifests
