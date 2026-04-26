# banquet-service

Service in the **event** domain of StayNest.

**Language:** Go · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/banquet-service/](../../../helm/charts/banquet-service/) — Helm chart
- [manifests/event/banquet-service/](../../../manifests/event/banquet-service/) — Raw K8s manifests
