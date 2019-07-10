resource "azurerm_subnet" "myterraformsubnet" {
    name                 = "user11Subnet1"
    resource_group_name  = "${azurerm_resource_group.myterraformgroup.name}"
    virtual_network_name = "${azurerm_virtual_network.myterraformnetwork.name}"
    address_prefix       = "11.0.1.0/24"
}
