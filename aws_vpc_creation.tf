# Configure Aviatrix provider source and version
terraform {
  required_providers {
    aviatrix = {
      source = "AviatrixSystems/aviatrix"
      version = "2.22.3"
    }
  }
}

# Configure Aviatrix provider
provider "aviatrix" {
  controller_ip           = "35.83.158.223"
  username                = "admin"
  password                = "Muhammad1234!"
  skip_version_validation = false
}
resource "aviatrix_transit_gateway" "test_transit_gateway_azure" {
  cloud_type        = 8
  account_name      = "Azure-Aviatrix"
  gw_name           = "transit"
  vpc_id            = "vnet_name:rg_name:resource_guid"
  vpc_reg           = "West US"
  gw_size           = "Standard_B1ms"
  subnet            = "10.30.0.0/24"
  zone              = "az-1"
  ha_subnet         = "10.30.0.0/24"
  ha_zone           = "az-2"
  ha_gw_size        = "Standard_B1ms"
  connected_transit = true
}
 
