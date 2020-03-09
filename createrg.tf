resource "azurerm_resource_group" "rg" {
    name     = "Mayur_tf"
    location = "westeurope"

    tags = {
        serviceprovider = "tieto"
    }
}
