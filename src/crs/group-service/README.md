# group-service

Service in the crs domain of StayNest.

Language: Go Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/group-service/](../../../helm/charts/group-service/) â€” Helm chart
- [manifests/crs/group-service/](../../../manifests/crs/group-service/) â€” Raw K8s manifests
