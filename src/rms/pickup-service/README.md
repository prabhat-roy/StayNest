# pickup-service

Service in the rms domain of StayNest.

Language: Go Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pickup-service/](../../../helm/charts/pickup-service/) â€” Helm chart
- [manifests/rms/pickup-service/](../../../manifests/rms/pickup-service/) â€” Raw K8s manifests
