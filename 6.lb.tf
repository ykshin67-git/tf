6.lb.tf
resource "azurerm_lb" "user17-lb" {
  name = "user17lb"
  location = azurerm_resource_group.user17-rg.location
  resource_group_name = azurerm_resource_group.user17-rg.name
  frontend_ip_configuration {
  name = "user17PublicIPAddress"
  public_ip_address_id = azurerm_public_ip.user17-publicip.id
 }
}
