# gds-service

Service in the channel-manager domain of StayNest.

Language: Go Â· Port: 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/gds-service/](../../../helm/charts/gds-service/) â€” Helm chart
- [manifests/channel-manager/gds-service/](../../../manifests/channel-manager/gds-service/) â€” Raw K8s manifests
