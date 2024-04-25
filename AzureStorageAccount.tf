resource "azurerm_resource_group" "demo" {
  name     = "example-resources"
  location = "west Europe"
}

resource "azurerm_storage_account" "storageAccountDemo" {
  name                     = "satestant000012"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tire             = "standard"
  account_replication_type = "GRS"

  tags = {
    video   = "azure"
    channel = "MyTerraformTestLab"
  }
}
