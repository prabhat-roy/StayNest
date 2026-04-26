# staff-sso

Service in the **identity** domain of StayNest.

**Language:** Go · **Port:** 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/staff-sso/](../../../helm/charts/staff-sso/) — Helm chart
- [manifests/identity/staff-sso/](../../../manifests/identity/staff-sso/) — Raw K8s manifests
