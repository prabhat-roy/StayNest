# shift-service

Service in the staff domain of StayNest.

Language: Go Â· Port: 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/shift-service/](../../../helm/charts/shift-service/) â€” Helm chart
- [manifests/staff/shift-service/](../../../manifests/staff/shift-service/) â€” Raw K8s manifests
