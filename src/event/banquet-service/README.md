# banquet-service

Service in the event domain of StayNest.

Language: Go Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/banquet-service/](../../../helm/charts/banquet-service/) â€” Helm chart
- [manifests/event/banquet-service/](../../../manifests/event/banquet-service/) â€” Raw K8s manifests
