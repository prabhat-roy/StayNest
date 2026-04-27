# booking-service

Service in the crs domain of StayNest.

Language: Go Â· Port: 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/booking-service/](../../../helm/charts/booking-service/) â€” Helm chart
- [manifests/crs/booking-service/](../../../manifests/crs/booking-service/) â€” Raw K8s manifests
