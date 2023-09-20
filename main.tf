terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id            = var.az_subscription_id
  skip_provider_registration = true
}

resource "azurerm_static_site" "lab-website" {
  name                = "${var.az_name_prefix}-static-website"
  resource_group_name = var.az_resource_group
  location            = var.location
  sku_size            = "Free"
}

output "deployment-token" {
  value = azurerm_static_site.lab-website.api_key
  sensitive = true
}

output "url" {
  value = "http://${azurerm_static_site.lab-website.default_host_name}"
}