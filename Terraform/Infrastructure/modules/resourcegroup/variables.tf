variable  "name" {
  description = "Nome do resource group"
  type        = string
  
}

variable "location" {
  type = string
  
}
variable "tags" {
  type    = map(string)
  default = {}
}
