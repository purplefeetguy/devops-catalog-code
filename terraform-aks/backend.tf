terraform {
  backend "azurerm" {
    resource_group_name  = "Utility-TFState"
    storage_account_name = "tfsstoraccpfl"
    container_name       = "tfsstorcontpfl"
    key                  = "terraform.tfstate"
  }
}
