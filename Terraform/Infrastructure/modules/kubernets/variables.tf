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


variable "tags" {
  type    = map(string)
  default = {}
}
variable subnet_id {
  type = string
}

variable "node_count" {
  type = number
}

variable "node_size" {
    type = string
}