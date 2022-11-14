/* The Azure Provider can be used to configure infrastructure in, 
Microsoft Azure using the Azure Resource Manager API's. */

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


#Target Subscription Details
provider "azurerm" {
   subscription_id               = var.target_subscription_id
   tenant_id                     = var.target_tenant_id
  
  features {}
  
}

#Target Resource group
data "azurerm_resource_group" "rg_name" {
  name                           = var.rg_name
  }

#Target Virtual Network
data "azurerm_virtual_network" "vmvnet" {
  name                           = var.vnet
  resource_group_name            = var.rg_name
}

#Target subnet
data "azurerm_subnet" "vmsubnet" {
  name                           = var.subnet
  resource_group_name            = data.azurerm_resource_group.rg_name.name
  virtual_network_name           = data.azurerm_virtual_network.vmvnet.name
  }

#Network Interface
resource "azurerm_network_interface" "vmnic" {
  name                           = "${var.vmname}-NIC"
  resource_group_name            = data.azurerm_resource_group.rg_name.name
  location                       = data.azurerm_resource_group.rg_name.location

  ip_configuration {
  name                           = "${var.vmname}-IP"
  subnet_id                      = data.azurerm_subnet.vmsubnet.id
  private_ip_address_allocation  = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  name                           = var.vmname
  resource_group_name            = data.azurerm_resource_group.rg_name.name
  location                       = data.azurerm_resource_group.rg_name.location
  network_interface_ids          = [azurerm_network_interface.vmnic.id]
  size                           = var.vm_size
  admin_username                 = var.admin_username
  admin_password                 = var.admin_password

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.sku_version
  }
}
