output "vm_machine" {
    value = {
        for k, v in azurerm_virtual_machine.vm:k => v.id
    }
  
}