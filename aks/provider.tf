terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }

  backend "azurerm" {
    subscription_id      = "2213e8b1-dbc7-4d54-8aff-b5e315df5e5b"
    resource_group_name  = "1-c2d93d90-playground-sandbox"
    storage_account_name = "tfstatebackendfiles"
    container_name       = "tfstate"
    key                  = "aks.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id = var.subscription_id
}