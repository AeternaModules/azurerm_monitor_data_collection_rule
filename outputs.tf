output "monitor_data_collection_rules_id" {
  description = "Map of id values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_data_collection_rules_data_collection_endpoint_id" {
  description = "Map of data_collection_endpoint_id values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.data_collection_endpoint_id if v.data_collection_endpoint_id != null && length(v.data_collection_endpoint_id) > 0 }
}
output "monitor_data_collection_rules_data_flow" {
  description = "Map of data_flow values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.data_flow if v.data_flow != null && length(v.data_flow) > 0 }
}
output "monitor_data_collection_rules_data_sources" {
  description = "Map of data_sources values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.data_sources if v.data_sources != null && length(v.data_sources) > 0 }
}
output "monitor_data_collection_rules_description" {
  description = "Map of description values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "monitor_data_collection_rules_destinations" {
  description = "Map of destinations values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.destinations if v.destinations != null && length(v.destinations) > 0 }
}
output "monitor_data_collection_rules_identity" {
  description = "Map of identity values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "monitor_data_collection_rules_immutable_id" {
  description = "Map of immutable_id values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.immutable_id if v.immutable_id != null && length(v.immutable_id) > 0 }
}
output "monitor_data_collection_rules_kind" {
  description = "Map of kind values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "monitor_data_collection_rules_location" {
  description = "Map of location values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.location if v.location != null && length(v.location) > 0 }
}
output "monitor_data_collection_rules_name" {
  description = "Map of name values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitor_data_collection_rules_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "monitor_data_collection_rules_stream_declaration" {
  description = "Map of stream_declaration values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.stream_declaration if v.stream_declaration != null && length(v.stream_declaration) > 0 }
}
output "monitor_data_collection_rules_tags" {
  description = "Map of tags values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

