data "azurerm_key_vault_secret" "client_id" {
  for_each     = { for k, v in var.api_management_openid_connect_providers : k => v if v.client_id_key_vault_id != null && v.client_id_key_vault_secret_name != null }
  name         = each.value.client_id_key_vault_secret_name
  key_vault_id = each.value.client_id_key_vault_id
}
data "azurerm_key_vault_secret" "client_secret" {
  for_each     = { for k, v in var.api_management_openid_connect_providers : k => v if v.client_secret_key_vault_id != null && v.client_secret_key_vault_secret_name != null }
  name         = each.value.client_secret_key_vault_secret_name
  key_vault_id = each.value.client_secret_key_vault_id
}
resource "azurerm_api_management_openid_connect_provider" "api_management_openid_connect_providers" {
  for_each = var.api_management_openid_connect_providers

  api_management_name = each.value.api_management_name
  client_id           = each.value.client_id != null ? each.value.client_id : try(data.azurerm_key_vault_secret.client_id[each.key].value, null)
  client_secret       = each.value.client_secret != null ? each.value.client_secret : try(data.azurerm_key_vault_secret.client_secret[each.key].value, null)
  display_name        = each.value.display_name
  metadata_endpoint   = each.value.metadata_endpoint
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  description         = each.value.description
}

