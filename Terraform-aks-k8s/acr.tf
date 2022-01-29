# resource "azurerm_resource_group" "rg" {
#   name     = "example-resources"
#   location = "West Europe"
# }

resource "azurerm_container_registry" "acr" {
  name                = "azadiacr"
  resource_group_name = azurerm_resource_group.k8s.name
  location            = azurerm_resource_group.k8s.location
  sku                 = "Basic"
#   admin_enabled       = false
}