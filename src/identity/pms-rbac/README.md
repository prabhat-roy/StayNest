# pms-rbac

Service in the identity domain of StayNest.

Language: Go Â· Port: 50024

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pms-rbac/](../../../helm/charts/pms-rbac/) â€” Helm chart
- [manifests/identity/pms-rbac/](../../../manifests/identity/pms-rbac/) â€” Raw K8s manifests
