variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
  default     = "1-ba0014c7-playground-sandbox"
}

variable "location" {
  description = "The location/region where the virtual network will be created."
  type        = string
  default     = "eastus"
}

variable "subscription_id" {
  description = "The Azure subscription ID."
  type        = string
}

variable "client_id" {
  description = "The client ID for the Azure service principal."
  type        = string
}

variable "client_secret" {
  description = "The client secret for the Azure service principal."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The tenant ID for the Azure service principal."
  type        = string
}
