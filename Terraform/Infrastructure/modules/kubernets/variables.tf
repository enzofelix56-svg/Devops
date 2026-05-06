variable "cluster_name" {
  description = "Nome do cluster"
  type        = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type    = number
  default = 1
}

variable "vm_size" {
  type    = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
variable subnet_id {
  type = string
}