# av-service

Service in the **event** domain of StayNest.

**Language:** Go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/av-service/](../../../helm/charts/av-service/) — Helm chart
- [manifests/event/av-service/](../../../manifests/event/av-service/) — Raw K8s manifests
