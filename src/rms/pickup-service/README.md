# pickup-service

Service in the **rms** domain of StayNest.

**Language:** Go · **Port:** 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pickup-service/](../../../helm/charts/pickup-service/) — Helm chart
- [manifests/rms/pickup-service/](../../../manifests/rms/pickup-service/) — Raw K8s manifests
