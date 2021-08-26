resource "azurerm_virtual_network" "user17-net" {
    name = "user17-vnet"
    address_space = ["17.0.0.0/16"]
    location = azurerm_resource_group.user17-rg.location
    resource_group_name = azurerm_resource_group.user17-rg.name
}
