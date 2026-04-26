# catering-service

Service in the **event** domain of StayNest.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/catering-service/](../../../helm/charts/catering-service/) — Helm chart
- [manifests/event/catering-service/](../../../manifests/event/catering-service/) — Raw K8s manifests
