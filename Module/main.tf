
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }    
  }
}


provider "azurerm" {
  features {}
}




resource "azurerm_resource_group" "Rg" {
  name = var.resource_group_name
  location = var.location
    
}

resource "azurerm_storage_account" "Sa" {
  name = var.storage_account_name
  resource_group_name = azurerm_resource_group.Rg.name
  location = azurerm_resource_group.Rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

