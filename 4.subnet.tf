resource "azurerm_subnet" "user17-subnet1" {
    name = "user17-mysubnet1"
    resource_group_name = azurerm_resource_group.user17-rg.name
    virtual_network_name = azurerm_virtual_network.user17-net.name
    address_prefixes = ["17.0.1.0/24"]
}
