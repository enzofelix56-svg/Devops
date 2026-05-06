terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

module "storage_account" {
  source                   = "./modules/storageaccount"
  name                     = var.storage_account_name
  resource_group_name      = module.resource_group.name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind
  access_tier              = var.storage_account_access_tier
}

module "resource_group" {
  source   = "./modules/resourcegroup"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "network_security_group" {
  source              = "./modules/networksecuritygroup"
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "virtual_network" {
  source               = "./modules/virtualnetwork"
  virtual_network_name = var.virtual_network_name
  resource_group_name  = module.resource_group.name
  location             = var.location
  nsg-Id               = module.network_security_group.id
}

module "virtual_network_teste" {
  source               = "./modules/virtualnetwork"
  virtual_network_name = "aks-dev-vnet-test"
  resource_group_name  = module.resource_group.name
  location             = var.location
  nsg-Id               = module.network_security_group.id
}

