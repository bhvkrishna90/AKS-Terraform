provider "azurerm" {
    version = "=1.5.0"
}

terraform {
    backend "azurerm" {
        storage_account_name = "abcd1234"
        container_name       = "tfstate"
        key                  = "prod.terraform.tfstate"
    }
}
