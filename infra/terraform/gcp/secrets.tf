resource "google_kms_key_ring" "staynest" {
  name     = "staynest-${var.environment}"
  location = var.gcp_region
}

resource "google_kms_crypto_key" "documents" {
  name            = "documents"
  key_ring        = google_kms_key_ring.staynest.id
  rotation_period = "7776000s" # 90d
}

resource "google_secret_manager_secret" "pg" {
  secret_id  = "staynest-${var.environment}-postgres"
  replication { auto {} }
}

resource "google_secret_manager_secret_version" "pg" {
  secret = google_secret_manager_secret.pg.id
  secret_data = jsonencode({
    username = google_sql_user.staynest.name
    password = random_password.pg.result
    instance = google_sql_database_instance.postgres.connection_name
    dbname   = google_sql_database.staynest.name
  })
}

resource "google_secret_manager_secret" "payment_gateway" {
  secret_id = "staynest-${var.environment}-payment-gateway"
  replication { auto {} }
}

resource "google_secret_manager_secret" "ota_credentials" {
  secret_id = "staynest-${var.environment}-ota-credentials"
  replication { auto {} }
}
