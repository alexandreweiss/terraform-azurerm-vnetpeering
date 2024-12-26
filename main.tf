data "azurerm_virtual_network" "left_vnet_data" {
  name = var.left_vnet_name
  resource_group_name = var.left_vnet_resource_group_name
}

data "azurerm_virtual_network" "right_vnet_data" {
  name = var.right_vnet_name
  resource_group_name = var.right_vnet_resource_group_name
}

resource "azurerm_virtual_network_peering" "left_right" {
  allow_forwarded_traffic = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit = var.left_allow_gateway_transit
  use_remote_gateways = var.left_use_remote_gateways
  resource_group_name = var.left_vnet_resource_group_name
  virtual_network_name = var.left_vnet_name
  remote_virtual_network_id = data.azurerm_virtual_network.right_vnet_data.id
  name = "${var.left_vnet_name}-${var.right_vnet_name}"
}

resource "azurerm_virtual_network_peering" "right_left" {
  allow_forwarded_traffic = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit = var.right_allow_gateway_transit
  use_remote_gateways = var.right_use_remote_gateways
  resource_group_name = var.right_vnet_resource_group_name
  virtual_network_name = var.right_vnet_name
  remote_virtual_network_id = data.azurerm_virtual_network.left_vnet_data.id
  name = "${var.right_vnet_name}-${var.left_vnet_name}"
}
