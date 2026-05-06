resource "azurerm_network_security_group" "aks-dev-nsg" {
  name                = "example-security-group"
  location            = var.location
  resource_group_name = var.resource_group_name
}
