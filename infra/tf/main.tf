terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.0"
        }
    }
    required_version = ">= 0.14.9"
}

provider "azurerm" {
    features {}
}

data "azurerm_client_config" "current" {}

variable "app_name" {}
variable "env_name" {}
variable "color" {}

locals {
  rgName = "rg-${var.app_name}-${var.env_name}"
  hostName = "${var.app_name}-${var.env_name}-plan"
  siteName = "${var.app_name}-${var.env_name}-site"
}

resource "azurerm_resource_group" "rg" {
  name = local.rgName
  location = "eastus"
}

resource "azurerm_app_service_plan" "plan" {
  name                = local.hostName
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "myApp" {
  name                = local.siteName
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  app_settings = {
    "EnvName"         = var.env_name
    "FavoriteColor"   = var.color
    "SCM_DO_BUILD_DURING_DEPLOYMENT" = "True"
  }
}

output "site_name" { value = azurerm_app_service.myApp.name }
output "rg_name" { value = azurerm_resource_group.rg.name }
output "host_name" {value = azurerm_app_service_plan.plan.name}
