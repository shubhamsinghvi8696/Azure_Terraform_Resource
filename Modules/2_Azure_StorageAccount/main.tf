resource "azurerm_storage_account" "Stg_resource" {
  for_each = var.var_stg
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = each.value.tags
  
}

