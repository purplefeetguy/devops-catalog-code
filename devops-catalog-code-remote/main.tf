provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}

resource "azurerm_resource_group" "tfstate_storage_rg" {
  name     = var.storage_rg
  location = var.storage_location
}

resource "azurerm_storage_account" "tfstate_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tfstate_storage_rg.name
  location                 = azurerm_resource_group.tfstate_storage_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate_storage_container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.tfstate_storage_account.name
  container_access_type = "private"
}

output "tfstate_resource_group_name" {
  value = azurerm_resource_group.tfstate_storage_rg.name
}

output "tfstate_storage_account_name" {
  value = azurerm_storage_account.tfstate_storage_account.name
}

output "tfstate_access_key" {
  value     = azurerm_storage_account.tfstate_storage_account.primary_access_key
  # sensitive = false
  sensitive = true
}
