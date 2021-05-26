provider "azurerm" {
   environment = "public"
   features {}
}
 module "linuxservers" {
    source              	= "../../module/azure/vm/azurerm"\
	create_resource_group   = false
    resource_group_name 	= "CMP"
	azure_subscription_id	= "e24e76dc-df5a-4add-b57b-6aa3f0eae0ee"
	azure_client_id			= "49dc5041-2873-4ee7-9a05-33723de63dbf"
	azure_client_secret		= "VdgxkF~M3-Kl004gGOdc1SS7a-q4kC.Lkh"
	azure_tenant_id			= "98f13429-d038-4e5e-85d8-846c6a963288"
    location            	= "westus2"
    vm_hostname         	= "mylinuxvm"
    nb_public_ip        	= "0"
    remote_port         	= "22"
    nb_instances        	= "2"
    vm_os_publisher     	= "Canonical"
    vm_os_offer         	= "UbuntuServer"
    vm_os_sku           	= "14.04.2-LTS"
    vnet_subnet_id      	= "/subscriptions/e24e76dc-df5a-4add-b57b-6aa3f0eae0ee/resourceGroups/CMP/providers/Microsoft.Network/virtualNetworks/CMP-vnet/subnets/default"
    boot_diagnostics    	= "true"
    delete_os_disk_on_termination = "true"
    data_disk           	= "true"
    data_disk_size_gb   	= "64"
    data_sa_type        	= "Premium_LRS"
    tags                	= {
								environment = "dev"
								costcenter  = "it"
							  }
  }