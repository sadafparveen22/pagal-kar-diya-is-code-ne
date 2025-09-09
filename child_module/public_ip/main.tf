resource "azurerm_public_ip" "publicip" {
  name                = "myapp-prod-pip01"
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}