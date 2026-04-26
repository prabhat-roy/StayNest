# chat-service

Service in the **guest** domain of StayNest.

**Language:** Go · **Port:** 50123

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/chat-service/](../../../helm/charts/chat-service/) — Helm chart
- [manifests/guest/chat-service/](../../../manifests/guest/chat-service/) — Raw K8s manifests
