# pricing-engine

Service in the **rms** domain of StayNest.

**Language:** Go · **Port:** 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pricing-engine/](../../../helm/charts/pricing-engine/) — Helm chart
- [manifests/rms/pricing-engine/](../../../manifests/rms/pricing-engine/) — Raw K8s manifests
