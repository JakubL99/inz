variable "appId" {
  description = "Id Klienta"
}

variable "password" {
  description = "Hasło do klastra AKS"
}

variable "group" {
  type = string
  default = "cluster"
}
variable "prefix" {
    type = string
    default = "inz-jlis-k8s"
}

variable "location" {
    default = "West Europe"
    description = "Location for resource"
}

variable "ssh_public_key" {
  type = string
  description = "Path SSH key"
}

variable "cluster_name" {
  type = string
  description = "Name Aks cluster"
}

variable "subscription_id" {
  default = "a584b269-f4a4-4f89-9fe0-7cb5bed76044"
}

variable "tenant_id" {
  default = "e66af1e9-d714-4a1f-8101-22a504f9622f"
}