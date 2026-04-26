# payment-service

Service in the **finance** domain of StayNest.

**Language:** Go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payment-service/](../../../helm/charts/payment-service/) — Helm chart
- [manifests/finance/payment-service/](../../../manifests/finance/payment-service/) — Raw K8s manifests
