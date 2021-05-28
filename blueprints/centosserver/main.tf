provider "azurerm" {
   environment = "public"
   features {}
}
 module "centosserver" {
    source              	= "../../module/azure/vm/azurerm"
	create_resource_group   = false
    resource_group_name 	= "%resource_group_name%"
	azure_subscription_id	= "%azure_subscription_id%"
	azure_client_id			= "%azure_client_id%"
	azure_client_secret		= "%azure_client_secret%"
	azure_tenant_id			= "%azure_tenant_id%"
    location            	= "%location%"
    vm_hostname         	= "mylinuxvm"
	admin_username			= "azureuser"
	admin_password      	= "ComplxP@ssw0rd!"
    nb_public_ip        	= "0"
    inbound_port_ranges     = ["22"]
    nb_instances        	= "%nb_instances%"
    vm_os_publisher     	= "OpenLogic"
    vm_os_offer         	= "CentOS"
    vm_os_sku           	= "7.3"
	vm_os_version			= "latest"
	vm_size					= "Standard_DS1_V2"
    vnet_subnet_id      	= "%vnet_subnet_id%"
    boot_diagnostics    	= "true"
    delete_os_disk_on_termination = "true"
    data_disk           	= "%data_disk%"
    data_disk_size_gb   	= "%data_disk_size_gb%"
    data_sa_type        	= "Premium_LRS"
    tags                	= {
								environment = "dev"
								costcenter  = "it"
							  }
  }