data "azurerm_resource_group" "current" {
  name = var.resource_group
}

data "azurerm_virtual_network" "current" {
  name                = var.virtual_network
  resource_group_name = data.azurerm_resource_group.current.name
}

data "azurerm_subnet" "vnet" {
  name                 = var.subnet
  virtual_network_name = data.azurerm_virtual_network.current.name
  resource_group_name  = data.azurerm_virtual_network.current.resource_group_name
}