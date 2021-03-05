terraform {
  backend "azurerm" {
    resource_group_name  = "devops-catalog-aks"
    storage_account_name = "doc20210305081209"
    container_name       = "devopscatalog"
    key                  = "terraform.tfstate"
  }
}
