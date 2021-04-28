terraform {
  backend "azurerm" {
    resource_group_name  = "devops-catalog-aks-tfs"
    storage_account_name = "devopscatalogstoracctfs"
    container_name       = "devops-catalog-storcontfs"
    key                  = "terraform.tfstate"
  }
}
