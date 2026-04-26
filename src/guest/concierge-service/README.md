# concierge-service

Service in the **guest** domain of StayNest.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/concierge-service/](../../../helm/charts/concierge-service/) — Helm chart
- [manifests/guest/concierge-service/](../../../manifests/guest/concierge-service/) — Raw K8s manifests
