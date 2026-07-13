variable "api_management_openid_connect_providers" {
  description = <<EOT
Map of api_management_openid_connect_providers, attributes below
Required:
    - api_management_name
    - client_id
    - client_id_key_vault_id (optional, alternative to client_id)
    - client_id_key_vault_secret_name (optional, alternative to client_id)
    - client_secret
    - client_secret_key_vault_id (optional, alternative to client_secret)
    - client_secret_key_vault_secret_name (optional, alternative to client_secret)
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
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_openid_connect_providers : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_openid_connect_providers : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
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
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

