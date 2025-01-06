resource "azurerm_virtual_network" "Virtual_Network_resource" {
for_each = var.Virtual_Network
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

dynamic "subnet" {
    for_each = each.value.var_subnet
    content {
    name             = subnet.value.name
    address_prefixes = subnet.value.address_prefixes
    }
    }
}