provider "azurerm" {
 version = "2.25.0"
 subscription_id = var.subscription_id
 client_id       = var.appId
 client_secret   = var.password
 tenant_id       = var.tenant_id
 features {}
}