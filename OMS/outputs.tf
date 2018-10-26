output "portalurl" {
  value = "${azurerm_log_analytics_workspace.k8soms.portal_url}"
}

output "omswsid" {
  value = "${azurerm_log_analytics_workspace.k8soms.workspace_id}"
}
