#Common variables
variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

#virtual network variables
variable "virtual_network_name" {
  type = string
}


#storage account variables

variable "storage_account_name" {
  type = string
}

variable "storage_account_tier" {
  type = string
}

variable "storage_account_replication_type" {
  type = string
}

variable "storage_account_kind" {
  type = string
}

variable "storage_account_access_tier" {
  type = string
}

#kubernetes variables
variable "cluster_name" {
  description = "Nome do cluster"
  type        = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = number
}

variable "subnet_id" {
  type = string
}

variable "node_size" {
    type = string
}