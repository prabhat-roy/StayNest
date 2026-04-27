# preference-service

Service in the guest domain of StayNest.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/preference-service/](../../../helm/charts/preference-service/) â€” Helm chart
- [manifests/guest/preference-service/](../../../manifests/guest/preference-service/) â€” Raw K8s manifests
