# menu-service

Service in the **fnb** domain of StayNest.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/menu-service/](../../../helm/charts/menu-service/) — Helm chart
- [manifests/fnb/menu-service/](../../../manifests/fnb/menu-service/) — Raw K8s manifests
