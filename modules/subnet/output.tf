output "subnet_resource" {
  value = {
    for k, v in azurerm_subnet.internal : k => v.id
  }

}