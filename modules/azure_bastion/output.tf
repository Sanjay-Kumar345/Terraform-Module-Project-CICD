output "bastion_resources" {
    value = azurerm_bastion_host.bastion["bastion1"].name
  
}