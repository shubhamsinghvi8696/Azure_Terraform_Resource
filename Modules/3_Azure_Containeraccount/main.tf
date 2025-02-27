resource "azurerm_storage_container" "Stg_container" {
  for_each             = var.Stg_container
  name                 = each.value.name 
  storage_account_name = each.value.storage_account_name
  container_access_type = each.value.container_access_type
}