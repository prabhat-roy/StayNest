# menu-service

Service in the fnb domain of StayNest.

Language: Go Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/menu-service/](../../../helm/charts/menu-service/) â€” Helm chart
- [manifests/fnb/menu-service/](../../../manifests/fnb/menu-service/) â€” Raw K8s manifests
