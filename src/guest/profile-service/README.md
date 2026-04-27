# profile-service

Service in the guest domain of StayNest.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/profile-service/](../../../helm/charts/profile-service/) â€” Helm chart
- [manifests/guest/profile-service/](../../../manifests/guest/profile-service/) â€” Raw K8s manifests
