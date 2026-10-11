variable "pubsub_lite_topics" {
  description = <<EOT
Map of pubsub_lite_topics, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - project
    - region
    - zone
    - partition_config (block):
        - capacity (optional, block):
            - publish_mib_per_sec (required)
            - subscribe_mib_per_sec (required)
        - count (required)
    - reservation_config (block):
        - throughput_reservation (optional)
    - retention_config (block):
        - per_partition_bytes (required)
        - period (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    project         = optional(string)
    region          = optional(string)
    zone            = optional(string)
    partition_config = optional(object({
      capacity = optional(object({
        publish_mib_per_sec   = number
        subscribe_mib_per_sec = number
      }))
      count = number
    }))
    reservation_config = optional(object({
      throughput_reservation = optional(string)
    }))
    retention_config = optional(object({
      per_partition_bytes = string
      period              = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

