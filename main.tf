resource "google_pubsub_lite_topic" "pubsub_lite_topics" {
  for_each = var.pubsub_lite_topics

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  region          = each.value.region
  zone            = each.value.zone

  dynamic "partition_config" {
    for_each = each.value.partition_config != null ? [each.value.partition_config] : []
    content {
      dynamic "capacity" {
        for_each = partition_config.value.capacity != null ? [partition_config.value.capacity] : []
        content {
          publish_mib_per_sec   = capacity.value.publish_mib_per_sec
          subscribe_mib_per_sec = capacity.value.subscribe_mib_per_sec
        }
      }
      count = partition_config.value.count
    }
  }

  dynamic "reservation_config" {
    for_each = each.value.reservation_config != null ? [each.value.reservation_config] : []
    content {
      throughput_reservation = reservation_config.value.throughput_reservation
    }
  }

  dynamic "retention_config" {
    for_each = each.value.retention_config != null ? [each.value.retention_config] : []
    content {
      per_partition_bytes = retention_config.value.per_partition_bytes
      period              = retention_config.value.period
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

