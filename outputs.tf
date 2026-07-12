output "api_management_openid_connect_providers_id" {
  description = "Map of id values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.id }
}
output "api_management_openid_connect_providers_api_management_name" {
  description = "Map of api_management_name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.api_management_name }
}
output "api_management_openid_connect_providers_client_id" {
  description = "Map of client_id values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.client_id }
  sensitive   = true
}
output "api_management_openid_connect_providers_client_secret" {
  description = "Map of client_secret values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.client_secret }
  sensitive   = true
}
output "api_management_openid_connect_providers_description" {
  description = "Map of description values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.description }
}
output "api_management_openid_connect_providers_display_name" {
  description = "Map of display_name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.display_name }
}
output "api_management_openid_connect_providers_metadata_endpoint" {
  description = "Map of metadata_endpoint values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.metadata_endpoint }
}
output "api_management_openid_connect_providers_name" {
  description = "Map of name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.name }
}
output "api_management_openid_connect_providers_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.resource_group_name }
}

