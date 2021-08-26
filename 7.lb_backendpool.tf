resource "azurerm_lb_backend_address_pool" "user17-bpepool" {
    loadbalancer_id = azurerm_lb.user17-lb.id
    name = "user17-BackEndAddressPool"
}
