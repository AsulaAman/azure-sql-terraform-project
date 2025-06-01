Automated Azure SQL Database Creation with Terraform
This project provides an automated solution for deploying an Azure SQL Database using Terraform, along with optional post-deployment testing using Bash scripts. It enables flexible provisioning, optional firewall rules, and connection testing.

Deploys:
Azure Resource Group
An Azure SQL Server
An Azure SQL Database

Configurable Variables
The following variables can be configured in the terraform.tfvars file:
- Database Name
- Region/Location
- Administrator login credentials

Optional Firewall Rules - Use a shell script to create firewall rules for your custom IP address.

Connection String Output - Outputs  the connection string for the Azure SQL Database upon successful deployment.

Optional Connection Test - Bash script to test the connection to the Azure SQL Database.

**Project Structure**
The project structure is as follows:
azure-sql-terraform-project/
├── main.tf - Main Terraform configuration file
├── variables.tf - Terraform input variables
├── output.tf - Output variables
├── terraform.tfvars - User-defined variables
├── setup.sh - Bash script to create firewall rules
├── README.md - Project documentation

**Prerequisites**
Before running the Terraform scripts, ensure you have the following prerequisites:

Azure CLI is installed and configured with the necessary permissions.

Terraform is installed on your local machine.

Bash shell access to your local machine.

**Getting Started**
Clone this repository to your local machine:

git clone https://github.com/your-username/azure-sql-terraform-project.git

cd azure-sql-terraform-project

**Configure Variables**
Create a terraform.tfvars file and specify the following variables:
- resource_group_name = "my-rg"
- location = "eastus"
- sql_server_name = "my-sql-server"
- admin_username = "sqladmin"
- admin_password = "YourStrongPassword123!"
- database_name = "my-database"

**Run Terraform**
terraform init
terraform apply

**Optional: Test Connection**
After the deployment is complete, you can test the connection to the Azure SQL Database by running the following command:
bash deploy.sh
- Opens a firewall rule for your custom IP address.
- Optionally tests the SQL connection using 'sqlcmd'.

**Outputs**
After successful deployment, the Terraform script will output the SQL server name and connection string for the Azure SQL Database.

**Cleanup**
To destroy the Azure resources created by Terraform, run:
terraform destroy

**License**
This project is licensed under the MIT License.
