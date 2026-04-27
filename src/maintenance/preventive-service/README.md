# preventive-service

Service in the maintenance domain of StayNest.

Language: Go Â· Port: 50302

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/preventive-service/](../../../helm/charts/preventive-service/) â€” Helm chart
- [manifests/maintenance/preventive-service/](../../../manifests/maintenance/preventive-service/) â€” Raw K8s manifests
