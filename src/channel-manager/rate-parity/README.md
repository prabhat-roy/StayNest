# rate-parity

Service in the **channel-manager** domain of StayNest.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rate-parity/](../../../helm/charts/rate-parity/) — Helm chart
- [manifests/channel-manager/rate-parity/](../../../manifests/channel-manager/rate-parity/) — Raw K8s manifests
