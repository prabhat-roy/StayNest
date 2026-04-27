# ota-connector

Service in the channel-manager domain of StayNest.

Language: Go Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ota-connector/](../../../helm/charts/ota-connector/) â€” Helm chart
- [manifests/channel-manager/ota-connector/](../../../manifests/channel-manager/ota-connector/) â€” Raw K8s manifests
