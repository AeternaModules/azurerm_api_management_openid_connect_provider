output "api_management_openid_connect_providers_id" {
  description = "Map of id values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_openid_connect_providers_api_management_name" {
  description = "Map of api_management_name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_openid_connect_providers_client_id" {
  description = "Map of client_id values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
  sensitive   = true
}
output "api_management_openid_connect_providers_client_secret" {
  description = "Map of client_secret values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "api_management_openid_connect_providers_description" {
  description = "Map of description values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_management_openid_connect_providers_display_name" {
  description = "Map of display_name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "api_management_openid_connect_providers_metadata_endpoint" {
  description = "Map of metadata_endpoint values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.metadata_endpoint if v.metadata_endpoint != null && length(v.metadata_endpoint) > 0 }
}
output "api_management_openid_connect_providers_name" {
  description = "Map of name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_management_openid_connect_providers_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_openid_connect_providers, keyed the same as var.api_management_openid_connect_providers"
  value       = { for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

