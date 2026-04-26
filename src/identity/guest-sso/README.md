# guest-sso

Service in the **identity** domain of StayNest.

**Language:** Go · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/guest-sso/](../../../helm/charts/guest-sso/) — Helm chart
- [manifests/identity/guest-sso/](../../../manifests/identity/guest-sso/) — Raw K8s manifests
