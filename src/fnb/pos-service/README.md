# pos-service

Service in the fnb domain of StayNest.

Language: Go Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pos-service/](../../../helm/charts/pos-service/) â€” Helm chart
- [manifests/fnb/pos-service/](../../../manifests/fnb/pos-service/) â€” Raw K8s manifests
