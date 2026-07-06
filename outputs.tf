output "api_management_openid_connect_providers" {
  description = "All api_management_openid_connect_provider resources"
  value       = azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers
  sensitive   = true
}
output "api_management_openid_connect_providers_api_management_name" {
  description = "List of api_management_name values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.api_management_name]
}
output "api_management_openid_connect_providers_client_id" {
  description = "List of client_id values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.client_id]
  sensitive   = true
}
output "api_management_openid_connect_providers_client_secret" {
  description = "List of client_secret values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.client_secret]
  sensitive   = true
}
output "api_management_openid_connect_providers_description" {
  description = "List of description values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.description]
}
output "api_management_openid_connect_providers_display_name" {
  description = "List of display_name values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.display_name]
}
output "api_management_openid_connect_providers_metadata_endpoint" {
  description = "List of metadata_endpoint values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.metadata_endpoint]
}
output "api_management_openid_connect_providers_name" {
  description = "List of name values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.name]
}
output "api_management_openid_connect_providers_resource_group_name" {
  description = "List of resource_group_name values across all api_management_openid_connect_providers"
  value       = [for k, v in azurerm_api_management_openid_connect_provider.api_management_openid_connect_providers : v.resource_group_name]
}

