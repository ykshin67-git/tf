resource "azurerm_resource_group" "user17-rg" {
    name     = "user17rg"
    location = "koreacentral"

    tags = {
        environment = "Created with Teraform"
    }
}
