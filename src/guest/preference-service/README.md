# preference-service

Service in the **guest** domain of StayNest.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/preference-service/](../../../helm/charts/preference-service/) — Helm chart
- [manifests/guest/preference-service/](../../../manifests/guest/preference-service/) — Raw K8s manifests
