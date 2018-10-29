provider "azurerm" {
    version = "~> 1.5"
    subscription_id = "85c57a3d4a"
    client_id = "61e1a624050e6f277"
    client_secret = "RvJsXLuSEnpqcjcJbw="
    tenant_id = "8a69051cf50db14"
}

terraform {
    backend "azurerm" {
        resource_group_name  = "krish-logs"
        storage_account_name = "deplogs"
        container_name       = "deploymentlogs"
        access_key           = "oHMyG1eAo8Nnmf0s+m+E8fglJ03Zo5KN6zIhUg=="
        key                  = "oHMyG1eAo8Nnmf0s+m+E8fglJ03Zo5KN6zIhUg=="
    }
}
