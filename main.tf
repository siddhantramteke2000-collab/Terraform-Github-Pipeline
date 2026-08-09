terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "siddhantkastorage"
    container_name       = "storetfstate"
    key                  = "practice.tfstate"
    use_oidc             = true
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-sid"
  location = "centralindia"
}
resource "azurerm_virtual_network" "vnet" {
  depends_on          = [azurerm_resource_group.rg]
  name                = "sid-vnet"
  location            = "centralindia"
  resource_group_name = "rg-sid"
  address_space       = ["10.0.0.0/16"]
}
