variable "subscription_id" {
  description = "Azure subscription id"
  type        = string
}

variable "resource_group" {
    default = "1-c2d93d90-playground-sandbox"
}

variable "agent_count" {
    default = 3
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
      default = "<CLUSTER_NAME>"
}

variable cluster_name {
      default = "<CLUSTER_NAME>"
}

variable aks_service_principal_app_id {
    default = "<SERVICE_PRINCIPAL_APP_ID>"
}

variable aks_service_principal_client_secret {
    default = "<SERVICE_PRINCIPAL_CLIENT_SECRET>"
}

variable "virtual_network" {
    type    = string
    default = "<VNET_NAME>"
}

variable "subnet" {
    type    = string
    default = "<SUBNET_NAME>"
}

variable "vm_size" {
  type = string
}

variable "os_disk_size_gb" {
  type = number
}

variable "load_balancer_sku" {
  type = string
}

variable "network_plugin" {
  type = string
}