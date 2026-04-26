# pms-rbac

Service in the **identity** domain of StayNest.

**Language:** Go · **Port:** 50024

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pms-rbac/](../../../helm/charts/pms-rbac/) — Helm chart
- [manifests/identity/pms-rbac/](../../../manifests/identity/pms-rbac/) — Raw K8s manifests
