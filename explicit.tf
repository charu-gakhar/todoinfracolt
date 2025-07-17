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

resource "azurerm_resource_group" "rg5" {
  name     = "rg321111"
  location = "West Europe"
}
resource "azurerm_storage_account" "stg190392" {
  name                     = "sg32111119032"
  resource_group_name      = "rg321111"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.rg5]//block name
}