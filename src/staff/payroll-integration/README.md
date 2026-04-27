# payroll-integration

Service in the staff domain of StayNest.

Language: Go Â· Port: 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payroll-integration/](../../../helm/charts/payroll-integration/) â€” Helm chart
- [manifests/staff/payroll-integration/](../../../manifests/staff/payroll-integration/) â€” Raw K8s manifests
