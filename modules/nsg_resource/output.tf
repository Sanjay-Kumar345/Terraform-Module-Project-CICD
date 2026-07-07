output "nsg_resource" {
    value = azurerm_network_security_group.nsg["nsg1"].name
  
}