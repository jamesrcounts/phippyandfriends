terraform {
  required_version = ">= 0.15"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2"
    }
  }
}