# Grafana Dashboards

Each domain ships a dashboard provisioned via ConfigMap. Standard dashboards:

- StayNest Overview — RED metrics across all 17 domains
- Per-domain dashboards (17 dashboards)
- Booking Funnel — OTA → CRS → PMS → confirmation conversion
- Rate Parity — own rates vs OTA rates by channel
- Revenue Dashboard — occupancy %, ADR, RevPAR, channel pickup (real-time ClickHouse)
- Inventory Lock Health — Redlock acquire latency + contention
- PCI-DSS Posture — payment tokenisation success rate, raw-PAN attempts (should be zero)
- Cloud Footprint — cost + usage per cloud (AWS, GCP, Azure)
