resource "azurerm_virtual_network_peering" "left_right" {
  allow_forwarded_traffic = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit = var.allow_gateway_transit
  use_remote_gateways = var.use_remote_gateways
  resource_group_name = var.left_vnet_resource_group_name
  virtual_network_name = var.left_vnet_name
  remote_virtual_network_id = var.right_vnet_id 
}

resource "azurerm_virtual_network_peering" "right_left" {
  allow_forwarded_traffic = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit = var.allow_gateway_transit
  use_remote_gateways = var.use_remote_gateways
  resource_group_name = var.right_vnet_resource_group_name
  virtual_network_name = var.right_vnet_name
  remote_virtual_network_id = var.left_vnet_id 
}