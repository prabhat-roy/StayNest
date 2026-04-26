# Observability — StayNest

In-cluster, cloud-portable stack:

| Signal | Tool | Notes |
|---|---|---|
| Metrics  | Prometheus + Thanos    | Scraped via pod annotations; SLO alerts via Pyrra |
| Logs     | Loki + Fluent Bit      | PII redacted at Fluent Bit before reaching Loki; PAN masking |
| Traces   | Tempo + Jaeger         | OTel SDK in every service - traces booking from OTA → CRS → PMS → room assignment |
| Profiles | Pyroscope              | Continuous profiling per service |
| Errors   | Sentry / GlitchTip     | Frontend (Sentry) + backend (GlitchTip) |
| RUM      | OTel RUM JS            | Web Vitals on guest portal |
| SLOs     | Pyrra                  | SLO CRDs - booking confirmation < 3s, check-in < 5s, POS txn < 1s |
| Routing  | Alertmanager           | Critical → PagerDuty + #staynest-alerts; per-team routes |

## Hospitality SLOs
- Booking confirmation < 3s (99.9%)
- Check-in/out < 5s (99.5%)
- POS transaction < 1s (99.9%)
- OTA rate parity sync < 60s (99%)
- Inventory lock acquire < 50ms (99.99%)
