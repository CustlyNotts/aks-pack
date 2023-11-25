terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }

  backend "azurerm" {
    subscription_id      = "28e1e42a-4438-4c30-9a5f-7d7b488fd883"
    resource_group_name  = "1-c2ba6c8a-playground-sandbox"
    storage_account_name = "tfstatebackendfiles"
    container_name       = "tfstate"
    key                  = "aks.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscription_id
}