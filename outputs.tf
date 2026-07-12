output "monitor_data_collection_rules_id" {
  description = "Map of id values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.id }
}
output "monitor_data_collection_rules_data_collection_endpoint_id" {
  description = "Map of data_collection_endpoint_id values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.data_collection_endpoint_id }
}
output "monitor_data_collection_rules_data_flow" {
  description = "Map of data_flow values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.data_flow }
}
output "monitor_data_collection_rules_data_sources" {
  description = "Map of data_sources values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.data_sources }
}
output "monitor_data_collection_rules_description" {
  description = "Map of description values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.description }
}
output "monitor_data_collection_rules_destinations" {
  description = "Map of destinations values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.destinations }
}
output "monitor_data_collection_rules_identity" {
  description = "Map of identity values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.identity }
}
output "monitor_data_collection_rules_immutable_id" {
  description = "Map of immutable_id values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.immutable_id }
}
output "monitor_data_collection_rules_kind" {
  description = "Map of kind values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.kind }
}
output "monitor_data_collection_rules_location" {
  description = "Map of location values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.location }
}
output "monitor_data_collection_rules_name" {
  description = "Map of name values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.name }
}
output "monitor_data_collection_rules_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.resource_group_name }
}
output "monitor_data_collection_rules_stream_declaration" {
  description = "Map of stream_declaration values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.stream_declaration }
}
output "monitor_data_collection_rules_tags" {
  description = "Map of tags values across all monitor_data_collection_rules, keyed the same as var.monitor_data_collection_rules"
  value       = { for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : k => v.tags }
}

