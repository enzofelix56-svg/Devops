#Common variables
subscription_id     = "cdd479cb-ae7d-4efc-9756-e53554edcb00"
resource_group_name = "rg-dev-aks-001"
location            = "East US"
tags = {
  environment = "dev"
  project     = "aks-cluster"
}
#virtual network variables
virtual_network_name = "vnet-dev-aks-001"

#storage account variables
storage_account_name             = "tfstatedevopsproject"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"
storage_account_kind             = "StorageV2"
storage_account_access_tier      = "Hot"
