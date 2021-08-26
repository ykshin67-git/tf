resource "azurerm_lb_nat_rule" "natrule1" {
  resource_group_name            = azurerm_resource_group.user17-rg.name
  loadbalancer_id                = azurerm_lb.user17-lb.id
  name                           = "web1SSH"
  protocol                       = "Tcp"
  frontend_port                  = 50001
  backend_port                   = 22
  frontend_ip_configuration_name = "user17PublicIPAddress"
}
