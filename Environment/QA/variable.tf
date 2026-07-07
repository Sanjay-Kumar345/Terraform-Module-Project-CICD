variable "rgs_name" {
  type = map(object({
    name     = string
    location = string
  }))

}

variable "vnetss_name" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))

}

variable "subnetss_name" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    location             = string
    address_prefixes     = list(string)
    virtual_network_name = string
  }))

}

variable "puicss_ip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = string
  }))

}

variable "nsgss_name" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))

}

variable "nicss_name" {

  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "vmsss_name" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    vm_size             = string
  }))
}




variable "strgss_name" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
  }))


}

variable "bastionsss_name" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
  }))

}

