# demand-forecast

Service in the **rms** domain of StayNest.

**Language:** Go · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/demand-forecast/](../../../helm/charts/demand-forecast/) — Helm chart
- [manifests/rms/demand-forecast/](../../../manifests/rms/demand-forecast/) — Raw K8s manifests
