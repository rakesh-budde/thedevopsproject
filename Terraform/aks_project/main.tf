module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = "myVNet"
  vnet_address_space  = ["10.0.0.0/16"]

  public_subnets = [
    { name = "publicSubnet1", address_prefix = "10.0.1.0/24" }
    # { name = "publicSubnet2", address_prefix = "10.0.2.0/24" }
  ]

  private_subnets = [
    { name = "privateSubnet1", address_prefix = "10.0.3.0/24" }
    # { name = "privateSubnet2", address_prefix = "10.0.4.0/24" }
  ]
}
