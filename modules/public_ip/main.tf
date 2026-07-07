resource "azurerm_public_ip" "pip" {
  for_each            = var.publicip_name
  name                = each.value.name
  location            = each.value.location
  resource_group_name = var.resource_group_name

  allocation_method = each.value.allocation_method
  sku               = each.value.sku
}