# training-service

Service in the staff domain of StayNest.

Language: Go Â· Port: 50283

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/training-service/](../../../helm/charts/training-service/) â€” Helm chart
- [manifests/staff/training-service/](../../../manifests/staff/training-service/) â€” Raw K8s manifests
