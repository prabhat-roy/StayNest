controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/staynest" }
}
worker {
  name = "worker-staynest-1"
  controllers = ["controller-1.boundary.staynest.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/staynest-boundary"
}
