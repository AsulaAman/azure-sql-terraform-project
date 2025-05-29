# Provider block - Azure Resource Manager(AzureRM) #
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Create Azure resource group #
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create Azure SQL server #
resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

# Create Azure SQL database #
resource "azurerm_mssql_database" "sql_db" {
  name                         = var.sql_database_name
  server_id                    = azurerm_mssql_server.sql_server.id
  sku_name                     = "Basic"
}
