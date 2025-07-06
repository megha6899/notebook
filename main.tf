# f2 for conflict works
resource "azurerm_resource_group" "rg" {
    for_each = var.rg
    #   for_each = tomap(var.rg)
    name = each.value
    location = each.key
}
