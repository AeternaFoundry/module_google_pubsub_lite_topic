output "pubsub_lite_topics_id" {
  description = "Map of id values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no id are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pubsub_lite_topics_deletion_policy" {
  description = "Map of deletion_policy values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no deletion_policy are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "pubsub_lite_topics_name" {
  description = "Map of name values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no name are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "pubsub_lite_topics_partition_config" {
  description = "Map of partition_config values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no partition_config are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => one(v.partition_config) if v.partition_config != null && length(v.partition_config) > 0 }
}
output "pubsub_lite_topics_project" {
  description = "Map of project values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no project are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => v.project if v.project != null && length(v.project) > 0 }
}
output "pubsub_lite_topics_region" {
  description = "Map of region values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no region are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => v.region if v.region != null && length(v.region) > 0 }
}
output "pubsub_lite_topics_reservation_config" {
  description = "Map of reservation_config values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no reservation_config are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => one(v.reservation_config) if v.reservation_config != null && length(v.reservation_config) > 0 }
}
output "pubsub_lite_topics_retention_config" {
  description = "Map of retention_config values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no retention_config are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => one(v.retention_config) if v.retention_config != null && length(v.retention_config) > 0 }
}
output "pubsub_lite_topics_zone" {
  description = "Map of zone values across all pubsub_lite_topics, keyed the same as var.pubsub_lite_topics except keys with no zone are omitted"
  value       = { for k, v in google_pubsub_lite_topic.pubsub_lite_topics : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

