provider "azurerm" {
    version = "=1.5.0"
    subscription_id = "85cXXXXb-XXXX-40fc-82b3-820479XXXXX"
    client_id = "61XXXX-XXXX-4b8d-a1e1-1af05XXXXXX"
    client_secret = "RvXXXcJbw="
    tenant_id = "8aXXXXX-fe2d-4f79-85f3-a101XXXXXX"
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
