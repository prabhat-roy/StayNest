# yield-service

Service in the rms domain of StayNest.

Language: Go Â· Port: 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/yield-service/](../../../helm/charts/yield-service/) â€” Helm chart
- [manifests/rms/yield-service/](../../../manifests/rms/yield-service/) â€” Raw K8s manifests
