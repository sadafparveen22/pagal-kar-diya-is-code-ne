terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "8e31d1d4-7aa9-4b0a-9687-fdca97e1bd8c"
}