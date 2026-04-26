# yield-service

Service in the **rms** domain of StayNest.

**Language:** Go · **Port:** 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/yield-service/](../../../helm/charts/yield-service/) — Helm chart
- [manifests/rms/yield-service/](../../../manifests/rms/yield-service/) — Raw K8s manifests
