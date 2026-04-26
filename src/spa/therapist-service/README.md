# therapist-service

Service in the **spa** domain of StayNest.

**Language:** Go · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/therapist-service/](../../../helm/charts/therapist-service/) — Helm chart
- [manifests/spa/therapist-service/](../../../manifests/spa/therapist-service/) — Raw K8s manifests
