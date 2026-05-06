output virtual_network_id {
  value = azurerm_virtual_network.aks-dev-vnet.id
}
output subnet_id {
  value = azurerm_subnet.aks-dev-subnet.id
}
