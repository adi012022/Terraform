terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "99669e62-5f82-4d74-abd8-2f56484bf5dd"
  client_id       = "fc946f5b-bb45-4fd5-ade5-c15c8646873e"
  client_secret   = var.client_secret
  tenant_id       = "3e85a88e-ad14-41db-b14b-bcfa702dd5ec"
}
resource "azurerm_resource_group" "rg" {
  name = "az-aks-rg"
  location = "eastus"
}

# Your Terraform code goes here...