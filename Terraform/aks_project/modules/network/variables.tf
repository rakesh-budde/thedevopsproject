variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
}

variable "location" {
  description = "The location/region where the virtual network will be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
}

variable "public_subnets" {
  description = "A list of public subnets to create within the virtual network."
  type = list(object({
    name           = string
    address_prefix = string
  }))
}

variable "private_subnets" {
  description = "A list of private subnets to create within the virtual network."
  type = list(object({
    name           = string
    address_prefix = string
  }))
}
