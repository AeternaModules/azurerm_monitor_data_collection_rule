output "monitor_data_collection_rules" {
  description = "All monitor_data_collection_rule resources"
  value       = azurerm_monitor_data_collection_rule.monitor_data_collection_rules
}
output "monitor_data_collection_rules_data_collection_endpoint_id" {
  description = "List of data_collection_endpoint_id values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.data_collection_endpoint_id]
}
output "monitor_data_collection_rules_data_flow" {
  description = "List of data_flow values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.data_flow]
}
output "monitor_data_collection_rules_data_sources" {
  description = "List of data_sources values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.data_sources]
}
output "monitor_data_collection_rules_description" {
  description = "List of description values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.description]
}
output "monitor_data_collection_rules_destinations" {
  description = "List of destinations values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.destinations]
}
output "monitor_data_collection_rules_identity" {
  description = "List of identity values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.identity]
}
output "monitor_data_collection_rules_immutable_id" {
  description = "List of immutable_id values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.immutable_id]
}
output "monitor_data_collection_rules_kind" {
  description = "List of kind values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.kind]
}
output "monitor_data_collection_rules_location" {
  description = "List of location values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.location]
}
output "monitor_data_collection_rules_name" {
  description = "List of name values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.name]
}
output "monitor_data_collection_rules_resource_group_name" {
  description = "List of resource_group_name values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.resource_group_name]
}
output "monitor_data_collection_rules_stream_declaration" {
  description = "List of stream_declaration values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.stream_declaration]
}
output "monitor_data_collection_rules_tags" {
  description = "List of tags values across all monitor_data_collection_rules"
  value       = [for k, v in azurerm_monitor_data_collection_rule.monitor_data_collection_rules : v.tags]
}

