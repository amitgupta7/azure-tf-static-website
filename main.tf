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
  sku_tier            = "Free"
}

resource "null_resource" "deployment" {
  triggers = {
    build_number = "${timestamp()}"
  }

  depends_on = [ azurerm_static_site.lab-website ]

  provisioner "local-exec" {
    command = format("swa deploy ./src/clinic-website --api-location ./src/api --env production --deployment-token '%s'", nonsensitive(azurerm_static_site.lab-website.api_key))
  }  
  
}

output "url" {
  value = "https://${azurerm_static_site.lab-website.default_host_name}?name=${var.az_name_prefix}"
}