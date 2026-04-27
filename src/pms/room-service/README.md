# room-service

Service in the pms domain of StayNest.

Language: Go Â· Port: 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/room-service/](../../../helm/charts/room-service/) â€” Helm chart
- [manifests/pms/room-service/](../../../manifests/pms/room-service/) â€” Raw K8s manifests
