variable "left_vnet_name" {
  description = "Left side vnet name of the peering"
}

variable "right_vnet_name" {
  description = "Right side vnet name of the peering"
}

variable "allow_forwarded_traffic" {
  default = false
  description = "If you want to allow forwarded traffic, set to true. Enable traffic from source IP not part of any side of the peering"
}

variable "allow_virtual_network_access" {
  default = true
  description = "Allow traffic to pass across peered vnet if true. Set to false to manage your own NSG rules"
}

variable "allow_gateway_transit" {
  default = false
  description = "Set to true if you want to allow peered vnet to reach this vnet Gateway"
}

variable "use_remote_gateways" {
  default = false
  description = "Set to true if you want to use remote gateway to reach branch connectivity"
}

variable "left_vnet_resource_group_name" {
  description = "Resource group name of the left vnet"
}

variable "right_vnet_resource_group_name" {
  description = "Resource group name of the right vnet"
}