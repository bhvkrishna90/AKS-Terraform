provider "azurerm" {
    version = "=1.5.0"
    subscription_id = "85c574bb-8264-40fc-82b3-8204793a3d4a"
    client_id = "61e1a624-81ed-4b8d-a1e1-1af050e6f277"
    client_secret = "RvJsEvcYU3bAXebkG0TfS7HAD9LLJXLuSEnpqcjcJbw="
    tenant_id = "8a6905b2-fe2d-4f79-85f3-a101cf50db14"
}

terraform {
    backend "azurerm" {
        resource_group_name  = "krish-logs"
        storage_account_name = "deplogs"
        container_name       = "deploymentlogs"
        access_key           = "oHMyG1eAo8Nnmf0sBOIk4Fswu9tsAXdtFjvTskLThw6dc2NYcxTivl7W0TiJ4btX+m+E8fglJ03Zo5KN6zIhUg=="
        key                  = "oHMyG1eAo8Nnmf0sBOIk4Fswu9tsAXdtFjvTskLThw6dc2NYcxTivl7W0TiJ4btX+m+E8fglJ03Zo5KN6zIhUg=="
    }
}
