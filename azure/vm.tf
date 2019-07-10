resource "azurerm_virtual_machine" "myterraformvm" {
    name                  = "user11VM"
    location              = "koreasouth"
    resource_group_name   = "${azurerm_resource_group.myterraformgroup.name}"
    network_interface_ids = ["${azurerm_network_interface.myterraformnic.id}"]
    vm_size               = "Standard_DS1_v2"

    storage_os_disk {
        name              = "user11OsDisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS"
	version   = "latest"
    }

    os_profile {
        computer_name  = "user11vm"
        admin_username = "azureuser"
    }

    os_profile_linux_config {
        disable_password_authentication = true
        ssh_keys {
            path     = "/home/azureuser/.ssh/authorized_keys"
            key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCn+fdRM+yRtUGa6i57MWAN21j0jTEjtdcD3O7vMglwR2KJDO+mzRvkSA6G+pS6gcxfuPJXcco1WIDYV6dRbNP+ccswQEKP3HewoA2qjZI0dMo+2cpkFOXvBjknJDpG0JIAPuwSY1o2/btbykFAK8jF3msVodaNnmXk+vQ0TKpePESAQiAqp8V3DJkiCKy5P4fBLZYnYjMlpc/biVAlu2EyAmhQkIji9fu01dhzAj3hNPIIiGotlN4tyOfYUzNjA4tNW8g0N2xraw8NlIjQ+daz8y3kCnXGPHalc+nqyRLCHgtpugMr95O0uc5/Vn1FxK2FleFBlxzbx8H3jWWgA8bp user11@cc-218325d9-678447d898-nmqt6"
        }
    }
}
