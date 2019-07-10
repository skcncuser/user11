resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "user11Vnet"
    address_space       = ["11.0.0.0/16"]
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"
}
