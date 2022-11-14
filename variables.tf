variable "target_subscription_id" {
  type = string
  default = ""
  description = ""
}

variable "target_tenant_id" {
  type = string
  default = ""
  description = ""
}

variable "rg_name" {
  type = string
   default = ""
   description = ""
}

variable "location" {
  type = string
  default = ""
}

variable "vnet" {
  type = string 
   default = ""   
   description = ""
}

variable "subnet" {
  type = string
   default = ""
   description = ""
}

variable "vmname" {
  type = string
   default = ""
   description = ""
}

variable "vm_size" {
  type = string
   default = ""
   description = ""
}

variable "publisher" {
  type = string
   default = ""
   description = ""
}

variable "offer" {
  type = string
   default = ""
   description = ""
}

variable "sku" {
  type = string
   default = ""
   description = ""
}

variable "sku_version" {
  type = string
   default = ""
   description = ""
}

variable "caching" {
  type = string
   default = ""
   description = ""
}

variable "storage_account_type" {
  type = string
   default = ""
   description = ""
}

variable "admin_username" {
  type = string
   default = ""
   description = "" 
}

variable "admin_password" {
  type = string
   default = ""
   description = "" 
}

variable "tags_environment" {
  type = string
   default = ""
   description = "" 
}

variable "publicip_allocation_method" {
  type = string
  default = ""
  description = ""
}

variable "private_ip_address_allocation" {
  type = string
  default = ""
  description = ""
}

variable "vnet_address_space" {
  type = any
}

variable "subnet_address_prefixes" {
  type = any
}
