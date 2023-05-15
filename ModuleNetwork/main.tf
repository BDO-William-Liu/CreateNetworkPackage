terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "myResourceGroup" {
    name = "${var.name}-resource-group"
    location = var.location
}

resource "azurerm_virtual_network" "AzureNetwork" {
    name = var.name
    resource_group_name = azurerm_resource_group.myResourceGroup.name
    address_space = var.address_space
    location = azurerm_resource_group.myResourceGroup.location
}