# inspection-service

Service in the housekeeping domain of StayNest.

Language: Go Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inspection-service/](../../../helm/charts/inspection-service/) â€” Helm chart
- [manifests/housekeeping/inspection-service/](../../../manifests/housekeeping/inspection-service/) â€” Raw K8s manifests
