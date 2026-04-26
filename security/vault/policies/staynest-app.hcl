# Default policy for StayNest application services.
path "staynest/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/staynest-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/staynest" { capabilities = ["update"] }
path "transit/decrypt/staynest" { capabilities = ["update"] }

# Payment gateway secrets - only payment-service may read
path "staynest/data/payment-service/gateway-credentials" {
  capabilities = ["read"]
}

# OTA channel partner credentials - only channel-manager may read
path "staynest/data/channel-manager/ota-credentials" {
  capabilities = ["read"]
}
