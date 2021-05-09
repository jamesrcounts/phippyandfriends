locals {
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id
  resource_location          = data.azurerm_resource_group.rg.location
  instance_id                = data.azurerm_resource_group.rg.tags["instance_id"]

  cluster_ids = [
    module.aks_dev.object_id,
    module.aks_prod.object_id,
  ]
}