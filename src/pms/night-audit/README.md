# night-audit

Service in the pms domain of StayNest.

Language: Go Â· Port: 50043

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/night-audit/](../../../helm/charts/night-audit/) â€” Helm chart
- [manifests/pms/night-audit/](../../../manifests/pms/night-audit/) â€” Raw K8s manifests
