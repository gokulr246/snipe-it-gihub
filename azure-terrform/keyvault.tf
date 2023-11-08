# data "azurerm_client_config" "current" {

# }

# resource "azurerm_key_vault" "snipe-key" {
#   name                       = "snipe-key"
#   location                   = azurerm_resource_group.snipe-it.location
#   resource_group_name        = azurerm_resource_group.snipe-it.name
#   tenant_id                  = data.azurerm_client_config.current.tenant_id
#   sku_name                   = "premium"
#   soft_delete_retention_days = 7

#   access_policy {
#     tenant_id = data.azurerm_client_config.current.tenant_id
#     object_id = data.azurerm_client_config.current.object_id

#     key_permissions = [
#       "create",
#       "get"
#     ]

#     secret_permissions = [
#       "set",
#       "get",
#       "delete",
#       "purge",
#       "recover"

#     ]
#   }
# }

# resource "azurerm_key_vault_secret" "snipe-key" {
#   name         = "test"
#   value        = "000000"
#   key_vault_id = azurerm_key_vault.snipe-key.id

# }