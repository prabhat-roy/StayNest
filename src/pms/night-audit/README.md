# night-audit

Service in the **pms** domain of StayNest.

**Language:** Go · **Port:** 50043

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/night-audit/](../../../helm/charts/night-audit/) — Helm chart
- [manifests/pms/night-audit/](../../../manifests/pms/night-audit/) — Raw K8s manifests
