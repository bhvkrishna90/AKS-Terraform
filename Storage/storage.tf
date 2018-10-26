
resource "azurerm_storage_account" "logstorage" {
    name = "${var.prefix}-storage"
    resource_group_name = "${var.prefix}-resources"
    account_replication_type = "Standard_LRS" 
    location = "${var.location}"
}

resource "azurerm_storage_container" "logcontianer" {
  name                  = "deploymentlogs"
  resource_group_name   = "${var.prefix}-resources"
  storage_account_name  = "${azurerm_storage_account.logstorage.name}"
  container_access_type = "private"
}
