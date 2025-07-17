terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "cb12d930-f01b-4020-b881-e961803d54bd"
}

resource "azurerm_resource_group" "rg4" {
  name     = "rg32111"
  location = "West Europe"
}
resource "azurerm_storage_account" "stg19039" {
  name                     = "sg321111903"
  resource_group_name      = azurerm_resource_group.rg4.name
  location                 = azurerm_resource_group.rg4.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}