variable "api_management_openid_connect_providers" {
  description = <<EOT
Map of api_management_openid_connect_providers, attributes below
Required:
    - api_management_name
    - client_id
    - client_id_key_vault_id (alternative to client_id - read from Key Vault instead)
    - client_id_key_vault_secret_name (alternative to client_id - read from Key Vault instead)
    - client_secret
    - client_secret_key_vault_id (alternative to client_secret - read from Key Vault instead)
    - client_secret_key_vault_secret_name (alternative to client_secret - read from Key Vault instead)
    - display_name
    - metadata_endpoint
    - name
    - resource_group_name
Optional:
    - description
EOT

  type = map(object({
    api_management_name                 = string
    client_id                           = string
    client_id_key_vault_id              = optional(string)
    client_id_key_vault_secret_name     = optional(string)
    client_secret                       = string
    client_secret_key_vault_id          = optional(string)
    client_secret_key_vault_secret_name = optional(string)
    display_name                        = string
    metadata_endpoint                   = string
    name                                = string
    resource_group_name                 = string
    description                         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_openid_connect_providers : (
        length(v.client_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_openid_connect_providers : (
        length(v.client_secret) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_openid_connect_providers : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_openid_connect_providers : (
        length(v.metadata_endpoint) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_openid_connect_provider's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
}

