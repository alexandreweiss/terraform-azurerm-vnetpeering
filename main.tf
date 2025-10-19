data "azurerm_client_config" "current" {}

# data "azurerm_virtual_network" "left_vnet_data" {
#   name                = var.left_vnet_name
#   resource_group_name = var.left_vnet_resource_group_name
# }

# data "azurerm_virtual_network" "right_vnet_data" {
#   name                = var.right_vnet_name
#   resource_group_name = var.right_vnet_resource_group_name
# }

resource "azurerm_virtual_network_peering" "left_right_0" {
  count = var.left_allow_gateway_transit || (var.left_allow_gateway_transit == false && var.right_allow_gateway_transit == false) ? 1 : 0

  allow_forwarded_traffic      = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit        = var.left_allow_gateway_transit
  use_remote_gateways          = var.left_use_remote_gateways
  resource_group_name          = var.left_vnet_resource_group_name
  virtual_network_name         = var.left_vnet_name
  remote_virtual_network_id    = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.right_vnet_resource_group_name}/providers/Microsoft.Network/virtualNetworks/${var.right_vnet_name}"
  # remote_virtual_network_id    = data.azurerm_virtual_network.right_vnet_data.id
  name = "${var.left_vnet_name}-${var.right_vnet_name}"
}

resource "azurerm_virtual_network_peering" "left_right_1" {
  count = var.right_allow_gateway_transit ? 1 : 0

  allow_forwarded_traffic      = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit        = var.left_allow_gateway_transit
  use_remote_gateways          = var.left_use_remote_gateways
  resource_group_name          = var.left_vnet_resource_group_name
  virtual_network_name         = var.left_vnet_name
  remote_virtual_network_id    = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.right_vnet_resource_group_name}/providers/Microsoft.Network/virtualNetworks/${var.right_vnet_name}"
  # remote_virtual_network_id    = data.azurerm_virtual_network.right_vnet_data.id
  name       = "${var.left_vnet_name}-${var.right_vnet_name}"
  depends_on = [azurerm_virtual_network_peering.right_left_0]
}

resource "azurerm_virtual_network_peering" "right_left_0" {
  count = var.right_allow_gateway_transit || (var.left_allow_gateway_transit == false && var.right_allow_gateway_transit == false) ? 1 : 0

  allow_forwarded_traffic      = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit        = var.right_allow_gateway_transit
  use_remote_gateways          = var.right_use_remote_gateways
  resource_group_name          = var.right_vnet_resource_group_name
  virtual_network_name         = var.right_vnet_name
  remote_virtual_network_id    = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.left_vnet_resource_group_name}/providers/Microsoft.Network/virtualNetworks/${var.left_vnet_name}"
  # remote_virtual_network_id    = data.azurerm_virtual_network.left_vnet_data.id
  name = "${var.right_vnet_name}-${var.left_vnet_name}"
}

resource "azurerm_virtual_network_peering" "right_left_1" {
  count = var.left_allow_gateway_transit ? 1 : 0

  allow_forwarded_traffic      = var.allow_forwarded_traffic
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_gateway_transit        = var.right_allow_gateway_transit
  use_remote_gateways          = var.right_use_remote_gateways
  resource_group_name          = var.right_vnet_resource_group_name
  virtual_network_name         = var.right_vnet_name
  remote_virtual_network_id    = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.left_vnet_resource_group_name}/providers/Microsoft.Network/virtualNetworks/${var.left_vnet_name}"
  # remote_virtual_network_id    = data.azurerm_virtual_network.left_vnet_data.id
  name       = "${var.right_vnet_name}-${var.left_vnet_name}"
  depends_on = [azurerm_virtual_network_peering.left_right_0]
}
