terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }

  backend "azurerm" {
    subscription_id      = "9734ed68-621d-47ed-babd-269110dbacb1"
    resource_group_name  = "1-8d31ef95-playground-sandbox"
    storage_account_name = "tfstatebackendfiles"
    container_name       = "tfstate"
    key                  = "rg.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscription_id
}