# room-service

Service in the **pms** domain of StayNest.

**Language:** Go · **Port:** 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/room-service/](../../../helm/charts/room-service/) — Helm chart
- [manifests/pms/room-service/](../../../manifests/pms/room-service/) — Raw K8s manifests
