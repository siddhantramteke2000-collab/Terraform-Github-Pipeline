terraform {
  required_providers {
    azurerm = {
      source  = "hashircorp/azurerm"
      version = "4.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "siddhantkastorage"
    container            = "storetfstate"
    key                  = "practice.tfstate"
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-sud"
  location = "centralindia"
}
