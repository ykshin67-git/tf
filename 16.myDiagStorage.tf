resource "azurerm_storage_account" "mystorageaccount" {
    name                = "user17vm1diagestorage1"
    resource_group_name = azurerm_resource_group.user17-rg.name
    location = azurerm_resource_group.user17-rg.location
    account_replication_type = "LRS"
    account_tier = "Standard"

    tags = {
        environment = "Created with Teraform"
    }
}
