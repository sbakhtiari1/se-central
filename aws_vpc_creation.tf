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

resource "aviatrix_vpc" "aa7_vpc" {
  cloud_type           = 1
  account_name         = "AWS-Aviatrix"
  region               = "us-west-1"
  name                 = "aa7-vpc"
  cidr                 = "10.107.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
resource "aviatrix_vpc" "aa10_vpc" {
  cloud_type           = 1
  account_name         = "AWS-Aviatrix"
  region               = "us-west-1"
  name                 = "aa10-vpc"
  cidr                 = "10.110.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}  
resource "aviatrix_spoke_gateway" "test_spoke_gateway_aws" {
  cloud_type                        = 1
  account_name                      = "AWS-Aviatrix"
  gw_name                           = "spoke-gw-aws"
  vpc_id                            = "vpc-0dc8bed4b89d53e8c"
  vpc_reg                           = "us-west-1"
  gw_size                           = "t2.micro"
  subnet                            = "10.110.32.0/20"
  single_ip_snat                    = false
  manage_transit_gateway_attachment = false
  tags                              = {
    name = "value"
  }
}
resource "aviatrix_spoke_gateway" "test_spoke_gateway_aws1" {
  cloud_type                        = 1
  account_name                      = "AWS-Aviatrix"
  gw_name                           = "spoke-gw-aws"
  vpc_id                            = "vpc-0dc8bed4b89d53e8c"
  vpc_reg                           = "us-west-1"
  gw_size                           = "t2.micro"
  subnet                            = "10.110.32.0/20"
  single_ip_snat                    = false
  manage_transit_gateway_attachment = false
  tags                              = {
    name = "value"
  }
}
