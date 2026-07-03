terraform {
  required_providers {
    azurerm = {
      source  = "hashircorp/azurerm"
      version = "4.78.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-sud"
  location = "centralindia"
}
