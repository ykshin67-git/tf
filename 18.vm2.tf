resource "azurerm_virtual_machine" "web2" {
    name                  = "user17web2"
    location              = azurerm_resource_group.user17-rg.location
    resource_group_name   = azurerm_resource_group.user17-rg.name
    availability_set_id   = azurerm_availability_set.avset.id
    delete_os_disk_on_termination    = true
    network_interface_ids = [azurerm_network_interface.nic2.id]
    vm_size               = "Standard_DS1_v2"

    storage_os_disk {
        name              = "myOsDisk2"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }
    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"
    }

 os_profile {
        computer_name  = "user17web2"
        admin_username = "user17"
        admin_password = "lpg0416710!@"
        custom_data= file("web.sh")
    }

 os_profile_linux_config {
        disable_password_authentication = false
        ssh_keys {
           path     = "/home/user17/.ssh/authorized_keys"  ## "/root/.ssh/authorized_keys"
           key_data = file("~/.ssh/id_rsa.pub")
        }
    }
    boot_diagnostics {
        enabled     = "true"
        storage_uri = azurerm_storage_account.mystorageaccount.primary_blob_endpoint
    }

    tags = {
        environment = "Created with Teraform"
    }
}
