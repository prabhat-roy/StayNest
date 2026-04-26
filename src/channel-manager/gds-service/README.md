# gds-service

Service in the **channel-manager** domain of StayNest.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/gds-service/](../../../helm/charts/gds-service/) — Helm chart
- [manifests/channel-manager/gds-service/](../../../manifests/channel-manager/gds-service/) — Raw K8s manifests
