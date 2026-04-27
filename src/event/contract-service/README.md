# contract-service

Service in the event domain of StayNest.

Language: Go Â· Port: 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-service/](../../../helm/charts/contract-service/) â€” Helm chart
- [manifests/event/contract-service/](../../../manifests/event/contract-service/) â€” Raw K8s manifests
