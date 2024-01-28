data "azurerm_resource_group" "RG" {
  name = "parivesh-rg01"
}


data "azurerm_subnet" "subnet1" {
  for_each             = var.NICs
  name                 = each.value.subnet_name
  virtual_network_name = "TODOAPP-VNET-INDIA"
  resource_group_name  = data.azurerm_resource_group.RG.name
}