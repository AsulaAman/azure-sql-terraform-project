# Setup script for Azure SQL Server
#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Get values from Terraform outputs
RESOURCE_GROUP=$(terraform output -raw resource_group_name)
SQL_SERVER_NAME=$(terraform output -raw sql_server_name)

# Get the public IP address of the machine running this script
MY_IP=$(curl -s ifconfig.me)

# Add firewall rule via Azure CLI
az sql server firewall-rule create \
  --resource-group "$RESOURCE_GROUP" \
  --server "$SQL_SERVER_NAME" \
  --name "AllowMyIP" \
  --start-ip-address "$MY_IP" \
  --end-ip-address "$MY_IP"

# Confirmation message
echo "Firewall rule created successfully for IP: $MY_IP on SQL Server: $SQL_SERVER_NAME in Resource Group: $RESOURCE_GROUP"
