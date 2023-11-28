terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.82.0"
    }
  }



  backend "azurerm" {
    resource_group_name  = "rg-mp-backend-tfstate"
    storage_account_name = "sabetfsmpqwxss2vwnj"
    container_name       = "tfstate-mp"
    key                  = "web.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}