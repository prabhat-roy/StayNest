# attendance-service

Service in the staff domain of StayNest.

Language: Go Â· Port: 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/attendance-service/](../../../helm/charts/attendance-service/) â€” Helm chart
- [manifests/staff/attendance-service/](../../../manifests/staff/attendance-service/) â€” Raw K8s manifests
