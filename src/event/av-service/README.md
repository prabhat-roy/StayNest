# av-service

Service in the event domain of StayNest.

Language: Go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/av-service/](../../../helm/charts/av-service/) â€” Helm chart
- [manifests/event/av-service/](../../../manifests/event/av-service/) â€” Raw K8s manifests
