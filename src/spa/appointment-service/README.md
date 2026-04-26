# appointment-service

Service in the **spa** domain of StayNest.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/appointment-service/](../../../helm/charts/appointment-service/) — Helm chart
- [manifests/spa/appointment-service/](../../../manifests/spa/appointment-service/) — Raw K8s manifests
