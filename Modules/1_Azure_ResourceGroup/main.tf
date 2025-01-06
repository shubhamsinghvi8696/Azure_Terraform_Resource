resource "azurerm_resource_group" "RG_Resource" {
  for_each = var.Module_RG
  name     = each.value.name
  location = each.value.location
  tags = each.value.tags
  managed_by = each.value.managed_by
}
