provider "azurerm" {
  features {}
	
  subscription_id = "2413464f-9295-4bb6-b6f8-388368668b0b"
  client_id       = "8cf06b39-7373-4af0-be1a-e547eccf057e"
  client_secret   = "wX-Rkq2~Zf6kBbdXgPNRVhi7JIC4lI_UGc"
  tenant_id       = "548c9143-b572-4e89-9389-1b2da921822c"
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = var.location
}

resource "azurerm_virtual_network" "example" {
  name                = "${var.prefix}-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}
	
resource "azurerm_subnet" "example" {
  name                 = "internal"
  virtual_network_name = azurerm_virtual_network.example.name
  resource_group_name  = azurerm_resource_group.example.name
  address_prefixes     = ["10.0.1.0/24"]
}
