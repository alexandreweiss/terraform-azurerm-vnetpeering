# terraform-azurerm-vnetpeering
Terraform module to create intra subscription vnet peerings between a left side vnet and a right side vnet

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                      | Version        |
|---------------------------------------------------------------------------|----------------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm)       | |

## Providers

| Name                                                          | Version        |
|---------------------------------------------------------------|----------------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) |  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                                | Type     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [azurerm_virtual_network_peering](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering)                                                     | resource |

## Inputs

| Name                                                                                                                                                                                                          | Description                                                                                  | Type                                                                    | Default                                                                      | Required |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|------------------------------------------------------------------------------|:--------:|
| <a name="left_vnet_resource_group_name"></a> [left\_vnet\_resource\_group\_name](#left\_vnet_\resource\_group\_name)                                                                                                               | Name of the resource group of the left side vnet.                                                   | `string`                                                                | n/a                                                                          |   yes    |
| <a name="left_vnet_name"></a> [left\_vnet\_name](#left\_vnet\_name)                                                                                                                                   | The name of the vnet on the left side of the peering.                                       | `string`                                                          |           n/a                                           |    yes    |
| <a name="right_vnet_resource_group_name"></a> [right\_vnet\_resource\_group\_name](#right\_vnet\_resource\_group\_name)                                                                                                               | Name of the resource group of the left side vnet.                                                   | `string`                                                                | n/a                                                                          |   yes    |
| <a name="right_vnet_name"></a> [right\_vnet\_name](#right\_vnet\_name)                                                                                                               | Name of the resource group of the right side vnet.                                                   | `string`                                                                | n/a                                                                          |   yes    |

## Outputs

| Name                                                                                                   | Description                                                                                           |
|--------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
None
<!-- END_TF_DOCS -->

