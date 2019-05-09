variable "service_plan_resource_group_name" {
  description = "The name of the resource group in which the service plan was created."
  type        = "string"
}

variable "apimgmt_name" {
  description = "Name of the api management service to create"
  type        = "string"
}

variable "apimgmt_sku" {
  description = "SKU of the api management service to create"
  type        = "string"
  default     = "Premium"
}

variable "virtual_network_type" {
  description = "Virtual Network type of the vnet in which api management service needs to be created. Valid values are None, External, Internal"
  type        = "string"
  default     = "None"
}

variable "subnet_resource_id" {
  description = "Subnet resource ID of the vnet in which api management service needs to be created"
  type        = "string"
  default     = ""
}

variable "apimgmt_pub_name" {
  description = "API management publisher name"
  type        = "string"
  default     = "mycompany.co"
}

variable "apimgmt_pub_email" {
  description = "API management publisher name"
  type        = "string"
  default     = "terraform@mycompany.co"
}

variable "apimgmt_capacity" {
  description = "Capacity of the SKU (number of deployed units of the SKU)."
  type    = "string"
  default = "1"
}

variable "api_hostname" {
  description = "API Hostname to configure on the Api Management service."
  type    = "string"
}

variable "primary_regional_hostname" {
  description = "Primary Regional Hostname to configure on the Api Management service."
  type    = "string"
}

variable "secondary_regional_hostname" {
  description = "Secondary Regional Hostname to configure on the Api Management service."
  type    = "string"
}

variable "portal_hostname" {
  description = "Portal Hostname to configure on the Api Management service."
  type    = "string"
}

variable "scm_hostname" {
  description = "SCM Hostname to configure on the Api Management service."
  type    = "string"
}

variable "key_vault_id" {
  description = "Url to the KeyVault Secret containing the Ssl Certificate. If absolute Url containing version is provided, auto-update of ssl certificate will not work. This requires Api Management service to be configured with MSI. The secret should be of type application/x-pkcs12"
  type    = "string"
}

variable "api_name" {
  description = "Name of the api to manage"
  type        = "string"
}

variable "revision" {
  description = "The Revision which used for this API."
  type        = "string"
  default     = "1"
}

variable "display_name" {
  description = "The display name of the API."
  type        = "string"
  default     = "Cobalt API"
}

variable "path" {
  description = "The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of it's resource paths within the API Management Service."
  type        = "string"
  default     = "cobalt"
}

variable "protocols" {
  description = "A list of protocols the operations in this API can be invoked. Possible values are http and https."
  type        = "list"
  default     = ["https"]
}

variable "service_url" {
  description = "Absolute URL of the backend service implementing this API."
  type        = "list"
}

variable "apimgmt_logger_name" {
  description = "Logger name for API management"
  type        = "string"
}

variable "appinsghts_instrumentation_key" {
  description = "Instrumentation key for App Insights"
  type        = "string"
}
variable "api_operation_name" {
  description = "Name of the api management API operation to create"
  type        = "string"
}

variable "api_operation_display_name" {
  description = "The Display Name for this API Management Operation."
  type        = "string"
  default     = "cobalt"
}

variable "api_operation_method" {
  description = "The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of it's resource paths within the API Management Service."
  type        = "string"
  default     = "POST"
}
