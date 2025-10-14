terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    key              = "terraform.tfstate"
    use_oidc         = true
    use_azuread_auth = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "oidc" {
  name     = var.resource_group_name
  location = var.location
}