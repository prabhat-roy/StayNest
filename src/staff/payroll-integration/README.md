# payroll-integration

Service in the **staff** domain of StayNest.

**Language:** Go · **Port:** 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payroll-integration/](../../../helm/charts/payroll-integration/) — Helm chart
- [manifests/staff/payroll-integration/](../../../manifests/staff/payroll-integration/) — Raw K8s manifests
