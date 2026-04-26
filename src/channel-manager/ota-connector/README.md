# ota-connector

Service in the **channel-manager** domain of StayNest.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ota-connector/](../../../helm/charts/ota-connector/) — Helm chart
- [manifests/channel-manager/ota-connector/](../../../manifests/channel-manager/ota-connector/) — Raw K8s manifests
