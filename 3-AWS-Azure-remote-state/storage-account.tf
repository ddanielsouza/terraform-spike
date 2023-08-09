# Create a resource group
resource "azurerm_resource_group" "first_resource_group" {
  name     = "remote-state"
  location = var.location
  tags     = local.commons_tags
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = "dnsouzaremotestate"
  resource_group_name      = azurerm_resource_group.first_resource_group.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = local.commons_tags

  blob_properties {
    versioning_enabled = true
  }

}

resource "azurerm_storage_container" "first_storage_container" {
  name                 = "remote-state"
  storage_account_name = azurerm_storage_account.first_storage_account.name
}
