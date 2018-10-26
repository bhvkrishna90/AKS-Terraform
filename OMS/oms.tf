resource "azurerm_log_analytics_workspace" "k8soms" {
  name                = "${var.prefix}-omsws"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  sku                 = "PerNode"
  retention_in_days   = 30
}

resource "azurerm_log_analytics_solution" "conin" {
  solution_name         = "ContainerInsights"
  location              = "${azurerm_log_analytics_workspace.k8soms.location}"
  resource_group_name   = "${azurerm_log_analytics_workspace.k8soms.resource_group_name}"
  workspace_resource_id = "${azurerm_log_analytics_workspace.k8soms.id}"
  workspace_name        = "${azurerm_log_analytics_workspace.k8soms.name}"

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}