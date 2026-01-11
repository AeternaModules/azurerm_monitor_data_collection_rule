resource "azurerm_monitor_data_collection_rule" "monitor_data_collection_rules" {
  for_each = var.monitor_data_collection_rules

  location                    = each.value.location
  name                        = each.value.name
  resource_group_name         = each.value.resource_group_name
  data_collection_endpoint_id = each.value.data_collection_endpoint_id
  description                 = each.value.description
  kind                        = each.value.kind
  tags                        = each.value.tags

  data_flow {
    built_in_transform = each.value.data_flow.built_in_transform
    destinations       = each.value.data_flow.destinations
    output_stream      = each.value.data_flow.output_stream
    streams            = each.value.data_flow.streams
    transform_kql      = each.value.data_flow.transform_kql
  }

  destinations {
    dynamic "azure_monitor_metrics" {
      for_each = each.value.destinations.azure_monitor_metrics != null ? [each.value.destinations.azure_monitor_metrics] : []
      content {
        name = azure_monitor_metrics.value.name
      }
    }
    dynamic "event_hub" {
      for_each = each.value.destinations.event_hub != null ? [each.value.destinations.event_hub] : []
      content {
        event_hub_id = event_hub.value.event_hub_id
        name         = event_hub.value.name
      }
    }
    dynamic "event_hub_direct" {
      for_each = each.value.destinations.event_hub_direct != null ? [each.value.destinations.event_hub_direct] : []
      content {
        event_hub_id = event_hub_direct.value.event_hub_id
        name         = event_hub_direct.value.name
      }
    }
    dynamic "log_analytics" {
      for_each = each.value.destinations.log_analytics != null ? [each.value.destinations.log_analytics] : []
      content {
        name                  = log_analytics.value.name
        workspace_resource_id = log_analytics.value.workspace_resource_id
      }
    }
    dynamic "monitor_account" {
      for_each = each.value.destinations.monitor_account != null ? [each.value.destinations.monitor_account] : []
      content {
        monitor_account_id = monitor_account.value.monitor_account_id
        name               = monitor_account.value.name
      }
    }
    dynamic "storage_blob" {
      for_each = each.value.destinations.storage_blob != null ? [each.value.destinations.storage_blob] : []
      content {
        container_name     = storage_blob.value.container_name
        name               = storage_blob.value.name
        storage_account_id = storage_blob.value.storage_account_id
      }
    }
    dynamic "storage_blob_direct" {
      for_each = each.value.destinations.storage_blob_direct != null ? [each.value.destinations.storage_blob_direct] : []
      content {
        container_name     = storage_blob_direct.value.container_name
        name               = storage_blob_direct.value.name
        storage_account_id = storage_blob_direct.value.storage_account_id
      }
    }
    dynamic "storage_table_direct" {
      for_each = each.value.destinations.storage_table_direct != null ? [each.value.destinations.storage_table_direct] : []
      content {
        name               = storage_table_direct.value.name
        storage_account_id = storage_table_direct.value.storage_account_id
        table_name         = storage_table_direct.value.table_name
      }
    }
  }

  dynamic "data_sources" {
    for_each = each.value.data_sources != null ? [each.value.data_sources] : []
    content {
      dynamic "data_import" {
        for_each = data_sources.value.data_import != null ? [data_sources.value.data_import] : []
        content {
          event_hub_data_source {
            consumer_group = data_import.value.event_hub_data_source.consumer_group
            name           = data_import.value.event_hub_data_source.name
            stream         = data_import.value.event_hub_data_source.stream
          }
        }
      }
      dynamic "extension" {
        for_each = data_sources.value.extension != null ? [data_sources.value.extension] : []
        content {
          extension_json     = extension.value.extension_json
          extension_name     = extension.value.extension_name
          input_data_sources = extension.value.input_data_sources
          name               = extension.value.name
          streams            = extension.value.streams
        }
      }
      dynamic "iis_log" {
        for_each = data_sources.value.iis_log != null ? [data_sources.value.iis_log] : []
        content {
          log_directories = iis_log.value.log_directories
          name            = iis_log.value.name
          streams         = iis_log.value.streams
        }
      }
      dynamic "log_file" {
        for_each = data_sources.value.log_file != null ? [data_sources.value.log_file] : []
        content {
          file_patterns = log_file.value.file_patterns
          format        = log_file.value.format
          name          = log_file.value.name
          dynamic "settings" {
            for_each = log_file.value.settings != null ? [log_file.value.settings] : []
            content {
              text {
                record_start_timestamp_format = settings.value.text.record_start_timestamp_format
              }
            }
          }
          streams = log_file.value.streams
        }
      }
      dynamic "performance_counter" {
        for_each = data_sources.value.performance_counter != null ? [data_sources.value.performance_counter] : []
        content {
          counter_specifiers            = performance_counter.value.counter_specifiers
          name                          = performance_counter.value.name
          sampling_frequency_in_seconds = performance_counter.value.sampling_frequency_in_seconds
          streams                       = performance_counter.value.streams
        }
      }
      dynamic "platform_telemetry" {
        for_each = data_sources.value.platform_telemetry != null ? [data_sources.value.platform_telemetry] : []
        content {
          name    = platform_telemetry.value.name
          streams = platform_telemetry.value.streams
        }
      }
      dynamic "prometheus_forwarder" {
        for_each = data_sources.value.prometheus_forwarder != null ? [data_sources.value.prometheus_forwarder] : []
        content {
          dynamic "label_include_filter" {
            for_each = prometheus_forwarder.value.label_include_filter != null ? [prometheus_forwarder.value.label_include_filter] : []
            content {
              label = label_include_filter.value.label
              value = label_include_filter.value.value
            }
          }
          name    = prometheus_forwarder.value.name
          streams = prometheus_forwarder.value.streams
        }
      }
      dynamic "syslog" {
        for_each = data_sources.value.syslog != null ? [data_sources.value.syslog] : []
        content {
          facility_names = syslog.value.facility_names
          log_levels     = syslog.value.log_levels
          name           = syslog.value.name
          streams        = syslog.value.streams
        }
      }
      dynamic "windows_event_log" {
        for_each = data_sources.value.windows_event_log != null ? [data_sources.value.windows_event_log] : []
        content {
          name           = windows_event_log.value.name
          streams        = windows_event_log.value.streams
          x_path_queries = windows_event_log.value.x_path_queries
        }
      }
      dynamic "windows_firewall_log" {
        for_each = data_sources.value.windows_firewall_log != null ? [data_sources.value.windows_firewall_log] : []
        content {
          name    = windows_firewall_log.value.name
          streams = windows_firewall_log.value.streams
        }
      }
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "stream_declaration" {
    for_each = each.value.stream_declaration != null ? [each.value.stream_declaration] : []
    content {
      column {
        name = stream_declaration.value.column.name
        type = stream_declaration.value.column.type
      }
      stream_name = stream_declaration.value.stream_name
    }
  }
}

