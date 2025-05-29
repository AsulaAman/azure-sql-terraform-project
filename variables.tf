# Define variables for the Azure SQL database #
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "eastus"
}

variable "sql_server_name" {
  description = "Name of the Azure SQL server"
  type        = string
}

variable "sql_database_name" {
  description = "Name of the Azure SQL database"
  type        = string
}

variable "admin_username" {
  description = "Username for the Azure SQL server administrator"
  type        = string
}

variable "admin_password" {
  description = "Password for the Azure SQL server administrator"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "Subscription ID for the Azure subscription"
  type        = string
}
