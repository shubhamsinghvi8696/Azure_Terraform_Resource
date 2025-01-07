
data "azurerm_subnet" "Data_subnet" {
  for_each             = var.main_Bastons
  name                 = each.value.submet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

resource "azurerm_public_ip" "Bastion_PublicIP" {
  for_each            = var.main_Bastons
  name                = each.value.pip_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "Bastions" {
  for_each            = var.main_Bastons
  name                = "AzureBastionSubnet_bastion"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.Data_subnet[each.key].id
    public_ip_address_id = azurerm_public_ip.Bastion_PublicIP[each.key].id
  }
}
