module "resource_group" {
  source      = "../../modules/resource_group"
  rg_name     = var.rgs_name
  rg_location = var.rgs_name

}

module "storage_account" {
  source        = "../../modules/storage_account"
  strg_name     = var.strgss_name
  strg_location = var.strgss_name
  depends_on    = [module.resource_group]


}

module "virtual_network" {
  source     = "../../modules/virtual_network"
  vnet_name  = var.vnetss_name
  depends_on = [module.resource_group]

}

module "subnet" {
  source              = "../../modules/subnet"
  subnet_name         = var.subnetss_name
  resource_group_name = module.resource_group.resource_group_name
  depends_on          = [module.virtual_network]

}

module "publicip" {
  source              = "../../modules/public_ip"
  publicip_name       = var.puicss_ip
  resource_group_name = module.resource_group.resource_group_name
  depends_on          = [module.resource_group]

}

module "nsgresource" {
  source              = "../../modules/nsg_resource"
  nsg_name            = var.nsgss_name
  resource_group_name = module.resource_group.resource_group_name

}

module "nic" {
  source              = "../../modules/Network_Interface_Card"
  nic_name            = var.nicss_name
  subnet_id           = module.subnet.subnet_resource
  public_ip_id        = module.publicip.publicip_resource
  resource_group_name = module.resource_group.resource_group_name

}

module "vm" {
  source  = "../../modules/Virtual_machine"
  vm_name = var.vmsss_name
  nic_id  = module.nic.nic_id

}

module "bastions" {
  source       = "../../modules/azure_bastion"
  bastion_name = var.bastionsss_name
  subnet_id    = module.subnet.subnet_resource["subnet3"]
  public_ip_id = module.publicip.publicip_resource["bastion"]

}