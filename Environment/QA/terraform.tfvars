rgs_name = {
  rg1 = {
    name     = "test-rg"
    location = "East US"
  }
}


strgss_name = {
  strg1 = {
    name                     = "alphastrg678"
    resource_group_name      = "test-rg"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

vnetss_name = {
  vnet1 = {
    name                = "test-vnet"
    resource_group_name = "test-rg"
    location            = "East US"
    address_space       = ["10.0.0.0/16"]
  }
}

subnetss_name = {
  subnet1 = {
    name                 = "Netflix_subnet"
    location             = "East US"
    resource_group_name  = "test-rg"
    virtual_network_name = "test-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "Starbucks_subnet"
    location             = "East US"
    resource_group_name  = "test-rg"
    virtual_network_name = "test-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "test-rg"
    virtual_network_name = "test-vnet"
    location             = "East US"
    address_prefixes     = ["10.0.3.0/26"]
  }
}

puicss_ip = {
  vm1 = {
    name                = "vm-01-pip"
    location            = "East US"
    resource_group_name = "test-rg"

    allocation_method = "Static"
    sku               = "Standard"
  }

  vm2 = {
    name                = "vm-02-pip"
    location            = "East US"
    resource_group_name = "test-rg"

    allocation_method = "Static"
    sku               = "Standard"
  }


  bastion = {
    name                = "bastion-pip"
    location            = "East US"
    resource_group_name = "test-rg"

    allocation_method = "Static"
    sku               = "Standard"
  }
}

nsgss_name = {
  nsg1 = {
    name                = "vm-nsg"
    location            = "East US"
    resource_group_name = "test-rg"
  }

}

nicss_name = {

  vm1 = {
    name                = "vm-nic-01"
    location            = "East US"
    resource_group_name = "test-rg"
  }

  vm2 = {
    name                = "vm-nic-02"
    location            = "East US"
    resource_group_name = "test-rg"
  }

}

vmsss_name = {

  vm1 = {
    name                = "Test-VM-01"
    location            = "East US"
    resource_group_name = "test-rg"
    vm_size             = "Standard_D2s_v3"
  }

  vm2 = {
    name                = "Test-VM-02"
    location            = "East US"
    resource_group_name = "test-rg"
    vm_size             = "Standard_D2s_v3"
  }

}

bastionsss_name = {
  bastion1 = {
    name                = "project-bastion"
    location            = "East US"
    resource_group_name = "test-rg"
  }
}