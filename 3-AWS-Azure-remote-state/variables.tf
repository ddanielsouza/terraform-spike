variable "location" {
  description = "Region of Azure Resource"
  type        = string
  default     = "Brazil South"
}

variable "account_tier" {
  description = "Tier of Storage Account Resource"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage account resource data replication type"
  type        = string
  default     = "LRS"
}