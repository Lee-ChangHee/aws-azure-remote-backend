terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name     = #backend resource group name
    storage_account_name    = #backend storage account name
    container_name          = #backend container name
    key                     = "tfstate"   
  }
}

provider "azurerm" {
  features {}
}