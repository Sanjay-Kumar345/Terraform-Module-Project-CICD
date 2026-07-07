resource "azurerm_network_interface" "nic" {
  for_each            = var.nic_name
  name                = each.value.name
  location            = each.value.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id["subnet1"]
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip_id[each.key]
  }

}