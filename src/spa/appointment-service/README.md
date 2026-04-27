# appointment-service

Service in the spa domain of StayNest.

Language: Go Â· Port: 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/appointment-service/](../../../helm/charts/appointment-service/) â€” Helm chart
- [manifests/spa/appointment-service/](../../../manifests/spa/appointment-service/) â€” Raw K8s manifests
