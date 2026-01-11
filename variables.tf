variable "monitor_data_collection_rules" {
  description = <<EOT
Map of monitor_data_collection_rules, attributes below
Required:
    - location
    - name
    - resource_group_name
    - data_flow (block):
        - built_in_transform (optional)
        - destinations (required)
        - output_stream (optional)
        - streams (required)
        - transform_kql (optional)
    - destinations (block):
        - azure_monitor_metrics (optional, block):
            - name (required)
        - event_hub (optional, block):
            - event_hub_id (required)
            - name (required)
        - event_hub_direct (optional, block):
            - event_hub_id (required)
            - name (required)
        - log_analytics (optional, block):
            - name (required)
            - workspace_resource_id (required)
        - monitor_account (optional, block):
            - monitor_account_id (required)
            - name (required)
        - storage_blob (optional, block):
            - container_name (required)
            - name (required)
            - storage_account_id (required)
        - storage_blob_direct (optional, block):
            - container_name (required)
            - name (required)
            - storage_account_id (required)
        - storage_table_direct (optional, block):
            - name (required)
            - storage_account_id (required)
            - table_name (required)
Optional:
    - data_collection_endpoint_id
    - description
    - kind
    - tags
    - data_sources (block):
        - data_import (optional, block):
            - event_hub_data_source (required, block):
                - consumer_group (optional)
                - name (required)
                - stream (required)
        - extension (optional, block):
            - extension_json (optional)
            - extension_name (required)
            - input_data_sources (optional)
            - name (required)
            - streams (required)
        - iis_log (optional, block):
            - log_directories (optional)
            - name (required)
            - streams (required)
        - log_file (optional, block):
            - file_patterns (required)
            - format (required)
            - name (required)
            - settings (optional, block):
                - text (required, block):
                    - record_start_timestamp_format (required)
            - streams (required)
        - performance_counter (optional, block):
            - counter_specifiers (required)
            - name (required)
            - sampling_frequency_in_seconds (required)
            - streams (required)
        - platform_telemetry (optional, block):
            - name (required)
            - streams (required)
        - prometheus_forwarder (optional, block):
            - label_include_filter (optional, block):
                - label (required)
                - value (required)
            - name (required)
            - streams (required)
        - syslog (optional, block):
            - facility_names (required)
            - log_levels (required)
            - name (required)
            - streams (required)
        - windows_event_log (optional, block):
            - name (required)
            - streams (required)
            - x_path_queries (required)
        - windows_firewall_log (optional, block):
            - name (required)
            - streams (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - stream_declaration (block):
        - column (required, block):
            - name (required)
            - type (required)
        - stream_name (required)
EOT

  type = map(object({
    location                    = string
    name                        = string
    resource_group_name         = string
    data_collection_endpoint_id = optional(string)
    description                 = optional(string)
    kind                        = optional(string)
    tags                        = optional(map(string))
    data_flow = object({
      built_in_transform = optional(string)
      destinations       = list(string)
      output_stream      = optional(string)
      streams            = list(string)
      transform_kql      = optional(string)
    })
    destinations = object({
      azure_monitor_metrics = optional(object({
        name = string
      }))
      event_hub = optional(object({
        event_hub_id = string
        name         = string
      }))
      event_hub_direct = optional(object({
        event_hub_id = string
        name         = string
      }))
      log_analytics = optional(object({
        name                  = string
        workspace_resource_id = string
      }))
      monitor_account = optional(object({
        monitor_account_id = string
        name               = string
      }))
      storage_blob = optional(object({
        container_name     = string
        name               = string
        storage_account_id = string
      }))
      storage_blob_direct = optional(object({
        container_name     = string
        name               = string
        storage_account_id = string
      }))
      storage_table_direct = optional(object({
        name               = string
        storage_account_id = string
        table_name         = string
      }))
    })
    data_sources = optional(object({
      data_import = optional(object({
        event_hub_data_source = object({
          consumer_group = optional(string)
          name           = string
          stream         = string
        })
      }))
      extension = optional(object({
        extension_json     = optional(string)
        extension_name     = string
        input_data_sources = optional(list(string))
        name               = string
        streams            = list(string)
      }))
      iis_log = optional(object({
        log_directories = optional(list(string))
        name            = string
        streams         = list(string)
      }))
      log_file = optional(object({
        file_patterns = list(string)
        format        = string
        name          = string
        settings = optional(object({
          text = object({
            record_start_timestamp_format = string
          })
        }))
        streams = list(string)
      }))
      performance_counter = optional(object({
        counter_specifiers            = list(string)
        name                          = string
        sampling_frequency_in_seconds = number
        streams                       = list(string)
      }))
      platform_telemetry = optional(object({
        name    = string
        streams = list(string)
      }))
      prometheus_forwarder = optional(object({
        label_include_filter = optional(object({
          label = string
          value = string
        }))
        name    = string
        streams = list(string)
      }))
      syslog = optional(object({
        facility_names = list(string)
        log_levels     = list(string)
        name           = string
        streams        = list(string)
      }))
      windows_event_log = optional(object({
        name           = string
        streams        = list(string)
        x_path_queries = list(string)
      }))
      windows_firewall_log = optional(object({
        name    = string
        streams = list(string)
      }))
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    stream_declaration = optional(object({
      column = object({
        name = string
        type = string
      })
      stream_name = string
    }))
  }))
}

