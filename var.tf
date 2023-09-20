variable "az_name_prefix" {
  description = "resource prefix e.g. az-static-website-username"
  type        = string
}

variable "az_subscription_id" {
  description = "azure subscription id"
  type        = string
}

variable "location" {
  default = "westus2"
}

variable "az_resource_group" {
  description = "resource group name to create these resources"
}
