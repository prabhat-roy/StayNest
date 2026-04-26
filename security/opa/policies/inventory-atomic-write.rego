# StayNest CRITICAL POLICY - PREVENTS OVERBOOKING
# All writes to room inventory MUST go through inventory-service (Rust + Redlock)
# OR through DB SERIALIZABLE transactions with explicit lock claim.
# Direct writes to room_inventory tables from any other service are DENIED.
package staynest.inventory.atomic_write

import future.keywords.if
import future.keywords.in

default allow := false

# Allow if write originates from inventory-service with valid Redlock claim
allow if {
    input.request.source.service_account == "system:serviceaccount:staynest:inventory-service"
    input.request.headers["x-staynest-redlock-token"] != ""
    input.request.headers["x-staynest-redlock-acquired-at-ms"] != ""
}

# Allow direct DB writes only inside SERIALIZABLE transaction with explicit lock claim
allow if {
    input.request.kind == "db.write"
    input.request.table in {"room_inventory", "rate_inventory", "availability"}
    input.request.transaction.isolation_level == "SERIALIZABLE"
    input.request.transaction.acquired_locks[_] == sprintf("inventory:%s:%s", [input.request.property_id, input.request.date])
}

deny[msg] if {
    input.request.kind == "db.write"
    input.request.table in {"room_inventory", "rate_inventory", "availability"}
    not allow
    msg := sprintf("OVERBOOKING RISK: write to %q without inventory-service Redlock or SERIALIZABLE+lock; reject to protect inventory atomicity", [input.request.table])
}

deny[msg] if {
    input.request.kind == "kafka.produce"
    input.request.topic == "channel-manager.inventory.changed"
    not input.request.headers["x-staynest-redlock-token"]
    msg := "inventory event missing Redlock token - all inventory updates must be locked"
}
