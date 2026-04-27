# rate-parity

Service in the channel-manager domain of StayNest.

Language: Go Â· Port: 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rate-parity/](../../../helm/charts/rate-parity/) â€” Helm chart
- [manifests/channel-manager/rate-parity/](../../../manifests/channel-manager/rate-parity/) â€” Raw K8s manifests
