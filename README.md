# terraform-azurerm-vnetpeering
Terraform module to create intra subscription vnet peerings between a left side vnet and a right side vnet

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                      | Version        |
|---------------------------------------------------------------------------|----------------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2         |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm)       | >= 3.11, < 4.0 |

## Providers

| Name                                                          | Version        |
|---------------------------------------------------------------|----------------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.11, < 4.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                                | Type     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet)                                                                     | resource |
| [azurerm_subnet_network_security_group_association.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_route_table_association.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association)                       | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network)                                                     | resource |

## Inputs

| Name                                                                                                                                                                                                          | Description                                                                                  | Type                                                                    | Default                                                                      | Required |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|------------------------------------------------------------------------------|:--------:|
| <a name="resource_group_name"></a> [resource\_group\_name](#resource\_group\_name)                                                                                                               | Name of the resource group of the left side vnet.                                                   | `string`                                                                | n/a                                                                          |   yes    |
| <a name="left_vnet_name"></a> [left\_vnet\_name](#left\_vnet\_name)                                                                                                                                   | The name of the vnet on the left side of the peering.                                       | `list(string)`                                                          |           n/a                                           |    yes    |
| <a name="right_vnet_id"></a> [right\_vnet\_id](#right\_vnet\_id)                                                                                                               | Name of the resource group of the left side vnet.                                                   | `string`                                                                | n/a                                                                          |   yes    |

## Outputs

| Name                                                                                                   | Description                                                                                           |
|--------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| <a name="output_vnet_address_space"></a> [vnet\_address\_space](#output\_vnet\_address\_space)         | The address space of the newly created vNet                                                           |
<!-- END_TF_DOCS -->

