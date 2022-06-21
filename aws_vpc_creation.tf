# Configure Aviatrix provider source and version
terraform {
  required_providers {
    aviatrix = {
      source = "AviatrixSystems/aviatrix"
      version = "2.22.0"
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


resource "aviatrix_vpc" "aa5_vpc" {
  cloud_type           = 1
  account_name         = "AWS-Aviatrix"
  region               = "us-west-1"
  name                 = "aa5-vpc"
  cidr                 = "10.105.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
resource "aviatrix_vpc" "aa6_vpc" {
  cloud_type           = 1
  account_name         = "AWS-Aviatrix"
  region               = "us-west-1"
  name                 = "aa6-vpc"
  cidr                 = "10.106.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
resource "aviatrix_vpc" "aa7_vpc" {
  cloud_type           = 1
  account_name         = "AWS-Aviatrix"
  region               = "us-west-1"
  name                 = "aa7-vpc"
  cidr                 = "10.107.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
