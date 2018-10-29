provider "azurerm" {
    version = "=1.5.0"
    subscription_id = "85c57493a3d4a"
    client_id = "61e1a624-8150e6f277"
    client_secret = "RvJsEvcYLLJXLuSEnpqcjcJbw="
    tenant_id = "8a6905b2-a101cf50db14"
}

terraform {
    backend "azurerm" {
        resource_group_name  = "krish-logs"
        storage_account_name = "deplogs"
        container_name       = "deploymentlogs"
        access_key           = "oHMyG1eAo8Nnmf0sTX+m+E8fglJ03Zo5KN6zIhUg=="
        key                  = "oHMyG1eAo8Nnmf0sBOIk44btX+m+E8fglJ03Zo5KN6zIhUg=="
    }
}
