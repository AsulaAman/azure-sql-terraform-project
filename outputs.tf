# Create output for the Azure Resource Group name #
output "resource_group_name" {
  description = "Name of the Azure Resource Group"
  value = azurerm_resource_group.rg.name
}

# Create output for the Azure SQL server name #
output "sql_server_name" {
  description = "Name of the Azure SQL server"
  value = azurerm_mssql_server.sql_server.name
}

# Create output for the Azure SQL database name #
output "sql_database_name" {
  description = "Name of the Azure SQL database"
  value = azurerm_mssql_database.sql_db.name
}

output "sql_server_fqdn" {
  description = "Fully qualified domain name of the Azure SQL server"
  value = azurerm_mssql_server.sql_server.fully_qualified_domain_name
}
