output "publicip_resource" {
  value = {
    for k, v in azurerm_public_ip.pip : k => v.id
  }
}