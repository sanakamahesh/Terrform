target_subscription_id                  = ""
target_tenant_id                        = ""
rg_name                                 = "Terraform-East-US2-RG1"
location                                = "East US2"
vnet                                    = "Terraform-RG-vnet1"
subnet                                  = "Terraform-RG-subnet1"
vmname                                  = "Terraform-VM1"
vm_size                                 = "Standard_D2s_v3"
publisher                               = "MicrosoftWindowsServer"
offer                                   = "WindowsServer"
sku                                     = "2019-datacenter-gensecond"
sku_version                             = "latest"
caching                                 = "ReadWrite"
storage_account_type                    = "Standard_LRS"
admin_username                          = "terraformadmin"
admin_password                          = "Password1234!"
tags_environment                        = "test" 
