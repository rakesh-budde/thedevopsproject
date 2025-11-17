output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network."
}

output "public_subnet_ids" {
  value       = [for subnet in azurerm_subnet.public : subnet.id]
  description = "The IDs of the public subnets."
}

output "private_subnet_ids" {
  value       = [for subnet in azurerm_subnet.private : subnet.id]
  description = "The IDs of the private subnets."
}
