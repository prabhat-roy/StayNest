# availability-service

Service in the crs domain of StayNest.

Language: Go Â· Port: 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/availability-service/](../../../helm/charts/availability-service/) â€” Helm chart
- [manifests/crs/availability-service/](../../../manifests/crs/availability-service/) â€” Raw K8s manifests
