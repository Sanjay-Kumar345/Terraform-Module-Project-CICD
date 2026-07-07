variable "vm_name" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      vm_size = string
    }))
  
}
variable "nic_id" {
    type = map(string)

  
}