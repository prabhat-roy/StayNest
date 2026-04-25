# StayNest — Enterprise Hospitality & Property Management Platform

Enterprise-grade, cloud-native hospitality platform built on open source technologies. Covers
the full hospitality lifecycle — hotel operations, property management, central reservations,
revenue management, guest experience, housekeeping, F&B, spa & wellness, loyalty programmes,
and OTA channel management — designed for hotel chains, resorts, serviced apartments, and
hospitality management companies operating multi-property portfolios globally.

---

## Overview

| Attribute         | Value                                                              |
|-------------------|--------------------------------------------------------------------|
| Type              | PMS · CRS · RMS · Guest Experience · Channel Management            |
| Domains           | 17 business domains                                                |
| Services          | 185+ microservices                                                 |
| Languages         | Go, Java, Kotlin, Python, Node.js, TypeScript, Rust, Elixir        |
| Standards         | HTNG, OTA (OpenTravel Alliance), HAPI, PMS-POS integration, GDPR   |
| Compliance        | GDPR, PCI-DSS (payment), local tourism regulations, CCPA           |
| Databases         | PostgreSQL, MongoDB, Redis, Cassandra, Elasticsearch, TimescaleDB  |
| Message Broker    | Apache Kafka, NATS JetStream, RabbitMQ                             |
| Cloud             | AWS (primary), Azure (secondary), Cloudflare (global CDN)          |
| Orchestration     | Kubernetes (EKS / AKS)                                             |
| Frontend          | Next.js (guest portal), React (front desk), Angular (revenue mgmt), Flutter (staff mobile) |

---

## Business Domains

| # | Domain                    | Key Services                                                           |
|---|---------------------------|------------------------------------------------------------------------|
| 1 | Property Management       | pms-service, room-service, rate-service, folio-service, night-audit   |
| 2 | Central Reservations      | crs-service, availability-service, booking-service, group-service      |
| 3 | Revenue Management        | rms-service, demand-forecast, pricing-engine, pickup-service, yield    |
| 4 | Channel Management        | channel-manager, ota-connector, gds-service, rate-parity, inventory   |
| 5 | Guest Experience          | guest-service, profile-service, preference-service, concierge, chat   |
| 6 | Housekeeping              | housekeeping-service, task-service, inspection, linen-service, lost   |
| 7 | Food & Beverage           | fnb-service, pos-service, menu-service, table-reservation, kitchen    |
| 8 | Spa & Wellness            | spa-service, appointment-service, therapist-service, package, retail  |
| 9 | Event & Banquet           | event-service, banquet-service, av-service, catering, contract        |
| 10 | Loyalty & Membership      | loyalty-service, tier-service, redemption, partnership, wallet        |
| 11 | Finance & Billing         | billing-service, payment-service, invoice-service, commission, folio  |
| 12 | Procurement & Stores      | procurement-service, inventory-service, vendor, recipe-costing        |
| 13 | Staff & HR                | shift-service, attendance-service, payroll-integration, training      |
| 14 | Maintenance & Engineering | maintenance-service, work-order, asset-service, preventive, energy    |
| 15 | Analytics & Reporting     | revenue-analytics, occupancy-analytics, guest-analytics, benchmark    |
| 16 | Identity & Access         | auth-service, guest-sso, staff-sso, mfa, pms-rbac                    |
| 17 | Platform                  | api-gateway, guest-bff, staff-bff, revenue-bff, graphql-gateway       |

---

## Architecture

```
    ┌──────────────────────────────────────────────────────────────────┐
    │              Cloudflare Edge (WAF + Global CDN)                  │
    └──────────────────────────┬───────────────────────────────────────┘
                               │
    ┌──────────────────────────▼───────────────────────────────────────┐
    │                       API Gateway                                │
    │          (OAuth2 · mTLS · Rate Limit · Multi-Property)           │
    └────┬──────────────┬───────────────┬──────────────┬───────────────┘
         │              │               │              │
  ┌──────▼──┐    ┌──────▼───┐   ┌───────▼──┐   ┌──────▼──────────┐
  │ Guest   │    │Front Desk│   │Revenue   │   │ Staff Mobile   │
  │ Portal  │    │(React)   │   │(Angular) │   │  (Flutter)     │
  │(Next.js)│    └──────┬───┘   └───────┬──┘   └──────┬──────────┘
  └──────┬──┘           └───────────────┴──────────────┘
         └──────────────────────┘
                         │ gRPC (Istio mTLS)
    ┌────────────────────▼────────────────────────────────────────────┐
    │               Internal gRPC Mesh (Istio mTLS)                   │
    │  ┌──────────┐  ┌────────────┐  ┌────────────┐  ┌────────────┐  │
    │  │   PMS    │  │    CRS     │  │  Revenue   │  │  Channel   │  │
    │  │ Services │  │  Services  │  │Management  │  │  Manager   │  │
    │  └──────────┘  └────────────┘  └────────────┘  └────────────┘  │
    └──────────────────────┬──────────────────────────────────────────┘
                           │ Kafka (Hospitality Events)
          ┌────────────────┼────────────────┐
          │                │                │
 ┌────────▼──────┐ ┌───────▼────────┐ ┌────▼────────────────┐
 │  OTA Channel  │ │  Revenue       │ │  Analytics Platform │
 │  Connectors   │ │  Optimiser     │ │  ClickHouse + Flink │
 │  (Booking.com │ │  (ML pricing)  │ │  Airflow + Superset │
 │   Expedia..)  │ └────────────────┘ └─────────────────────┘
 └───────────────┘
```

---

## Tech Stack

### Hospitality Standards & Protocols
- **HTNG (Hotel Technology Next Generation)**: Web services standards for PMS/POS/CRS integration
- **OTA (OpenTravel Alliance)**: XML/JSON schemas for reservation, availability, and rate distribution
- **GDS Connectivity**: Amadeus, Sabre, Travelport — via GDS-compatible XML messaging
- **OTA Channel Manager**: Booking.com, Expedia, Airbnb via channel manager API (2-way sync)
- **HAPI**: Hotel API standard for modern PMS-to-POS integration

### Infrastructure
- **Kubernetes**: EKS + AKS — multi-region for global hotel chains
- **Real-time**: Elixir/Phoenix (WebSocket) — live room status board, housekeeping updates, guest chat
- **Time-Series**: TimescaleDB — occupancy rates, RevPAR trends, energy consumption per room
- **Search**: Elasticsearch — guest profile search across 1M+ global guest records
- **POS Integration**: gRPC bridge to on-premise POS terminals (F&B, spa, retail)

### CI/CD & GitOps
- **CI**: Jenkins (primary), GitHub Actions, GitLab CI
- **CD**: ArgoCD (App-of-Apps), Argo Rollouts (canary — zero downtime for check-in/out services)
- **IaC**: Terraform (EKS/AKS + multi-region), Crossplane, Ansible
- **Secrets**: HashiCorp Vault + External Secrets Operator (payment credentials, GDS API keys)

### Observability
- **Metrics**: Prometheus + Grafana (check-in latency, POS transaction rate, OTA sync lag)
- **Logs**: Loki + Fluent Bit (PII masked — GDPR for guest data)
- **Traces**: Jaeger + OpenTelemetry (trace booking from OTA → CRS → PMS → room assignment)
- **Revenue Dashboard**: Real-time ClickHouse — occupancy %, ADR, RevPAR, channel pick-up by date
- **SLOs**: Booking confirmation < 3s, check-in < 5s, POS transaction < 1s

### Security (PCI-DSS + GDPR)
- **Identity**: Keycloak (guest SSO + social login), staff RBAC with property-level scoping
- **Payment**: PCI-DSS scope minimised — tokenisation via payment gateway (no raw card data stored)
- **Guest PII**: GDPR-compliant — right to erasure, consent management, masked logs
- **Network**: Cilium eBPF, Istio mTLS, Cloudflare WAF

### AI / ML (Hospitality Intelligence)
- **Dynamic Pricing**: ML model (demand + competitor rates + events + lead time + channel) — real-time rate recommendations
- **Demand Forecasting**: LSTM model (historical occupancy + local events + weather + bookings on-hand)
- **Guest Personalisation**: Collaborative filtering — room upsell, F&B recommendation, ancillary revenue
- **Churn Prevention**: Survival analysis on loyalty members — triggers win-back offers
- **Energy Optimisation**: RL agent for HVAC scheduling based on occupancy forecast — 20% energy saving
- **Sentiment Analysis**: NLP on guest reviews (TripAdvisor, Booking.com, internal) — department-level feedback
- **No-Show Prediction**: ML model on booking behaviour — triggers deposit requests or overbooking strategy

---

## Key Design Decisions

1. **Multi-property architecture**: All services are property-scoped via tenant ID — a single deployment serves hundreds of properties with data isolation enforced at PostgreSQL RLS level
2. **CRS as source of truth**: Central Reservation System owns availability and rates — PMS syncs bidirectionally; OTA channels receive read-only projections
3. **Event-driven housekeeping**: `room.checked-out` Kafka event triggers automatic housekeeping task creation, assignment, and priority queue update — no manual dispatcher needed
4. **Rate parity enforcement**: Dedicated rate-parity service monitors own rates vs. OTA rates in real-time — alerts revenue manager on parity violations within 5 minutes
5. **Offline-capable front desk**: PMS front desk caches critical data locally (IndexedDB) — check-in/out works during network outage; syncs on reconnection
6. **PCI scope minimisation**: Card data never touches internal services — payment tokenised at gateway edge, PCI scope limited to network segment only

---

## Status

- [ ] Architecture design & hospitality data model
- [ ] Service registry & proto definitions
- [ ] PMS core (room management, folio, night audit)
- [ ] CRS (availability, rates, booking engine)
- [ ] OTA channel manager (Booking.com, Expedia connectivity)
- [ ] Service skeletons (healthz, metrics)
- [ ] Docker Compose (local dev stack)
- [ ] Helm charts (per-service)
- [ ] CI/CD pipelines
- [ ] GitOps (ArgoCD)
- [ ] Revenue management AI (dynamic pricing, demand forecast)
