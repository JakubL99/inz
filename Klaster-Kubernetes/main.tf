terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.5"
    }
  }
}

resource "azurerm_resource_group" "k8s" {
  name     = "${var.group}-${var.prefix}"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = azurerm_resource_group.k8s.name
  dns_prefix          = var.prefix

  default_node_pool {
    name = "worker"
    node_count = 2
    vm_size = "Standard_D2_v2"
    type = "VirtualMachineScaleSets"
    availability_zones = ["1", "2", "3"]
    enable_auto_scaling = true
    min_count = 1
    max_count = 5
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  tags = {
    environment = "Test"
  }
}