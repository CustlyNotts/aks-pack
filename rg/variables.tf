variable "subscription_id" {
  description = "Azure subscription id"
  type        = string
}

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "resource_group_location" {
  description = "Azure resource group location"
  type        = string
}

variable "resource_group_tags" {
  description = "Azure tags"
  type        = map(string)
  default     = {}
}