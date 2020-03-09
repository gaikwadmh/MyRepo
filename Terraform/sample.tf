provider “azurerm” { 
} 
terraform { 
 backend “azurerm” {}
} 
resource “azurerm_resource_group” “rgdeploy” {
 name = “testResourceGroup”
 location = “westus” 
}