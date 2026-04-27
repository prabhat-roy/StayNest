# chat-service

Service in the guest domain of StayNest.

Language: Go Â· Port: 50123

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/chat-service/](../../../helm/charts/chat-service/) â€” Helm chart
- [manifests/guest/chat-service/](../../../manifests/guest/chat-service/) â€” Raw K8s manifests
