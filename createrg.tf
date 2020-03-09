# Configure the Azure provider
provider "azurerm" {
    version = "~>1.32.0"
}

resource "azurerm_resource_group" "rg" {
    name     = "Mayur_tf"
    location = "westeurope"

    tags = {
        serviceprovider = "tieto"
    }
}
