# resource "azurerm_storage_account" "state" {
#   name                     = "doc20210305081209"
#   resource_group_name      = var.resource_group
#   location                 = var.region
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   allow_blob_public_access = true
# }

# resource "azurerm_storage_container" "state" {
#   name                  = "devopscatalog"
#   storage_account_name  = azurerm_storage_account.state.name
#   container_access_type = "blob"
# }
