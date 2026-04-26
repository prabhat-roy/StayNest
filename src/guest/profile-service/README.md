# profile-service

Service in the **guest** domain of StayNest.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/profile-service/](../../../helm/charts/profile-service/) — Helm chart
- [manifests/guest/profile-service/](../../../manifests/guest/profile-service/) — Raw K8s manifests
