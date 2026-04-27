# staff-sso

Service in the identity domain of StayNest.

Language: Go Â· Port: 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/staff-sso/](../../../helm/charts/staff-sso/) â€” Helm chart
- [manifests/identity/staff-sso/](../../../manifests/identity/staff-sso/) â€” Raw K8s manifests
