variable "static_web_app_name" {
  type        = string
  description = "Name of the static web app"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group name to deploy to"
}

variable "location" {
  type        = string
  description = "Location of the Static Web App"
}

variable "sku_tier" {
  type        = string
  default     = "Free"
  description = "Specifies the SKU tier of the Static Web App. Possible values are Free or Standard"
}

variable "custom_domains" {
  type = list(object(
    {
      domain_name     = string
      validation_type = optional(string, "cname-delegation")
    }
  ))
  default     = []
  description = "Static Web App custom domains"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
}
