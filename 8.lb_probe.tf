resource "azurerm_lb_probe" "user17-lb-probe" {
    resource_group_name = azurerm_resource_group.user17-rg.name
    loadbalancer_id = azurerm_lb.user17-lb.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}
