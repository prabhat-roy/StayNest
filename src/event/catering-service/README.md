# catering-service

Service in the event domain of StayNest.

Language: Go Â· Port: 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/catering-service/](../../../helm/charts/catering-service/) â€” Helm chart
- [manifests/event/catering-service/](../../../manifests/event/catering-service/) â€” Raw K8s manifests
