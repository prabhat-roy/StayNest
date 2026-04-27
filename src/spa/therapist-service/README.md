# therapist-service

Service in the spa domain of StayNest.

Language: Go Â· Port: 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/therapist-service/](../../../helm/charts/therapist-service/) â€” Helm chart
- [manifests/spa/therapist-service/](../../../manifests/spa/therapist-service/) â€” Raw K8s manifests
