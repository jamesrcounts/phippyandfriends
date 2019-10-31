resource "azuread_application" "aks" {
  name = "container-pipelines-demo-app"
}

resource "azuread_service_principal" "aks" {
  application_id               = azuread_application.aks.application_id
  app_role_assignment_required = false

  tags = ["Demos"]
}

resource "azuread_application_password" "credential" {
  application_object_id = azuread_application.aks.id
  value                 = random_uuid.password.result
  end_date_relative     = "24h"
}

resource "azurerm_role_assignment" "k8s_acrpull" {
  principal_id         = azuread_service_principal.aks.object_id
  scope                = azurerm_container_registry.basic.id
  role_definition_name = "AcrPull"
}

resource "random_uuid" "password" {}
