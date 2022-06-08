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
resource "aviatrix_vpc" "aws_vpc" {
  cloud_type           = 1
  account_name         = "AWS-Aviatrix"
  region               = "us-west-1"
  name                 = "aws-vpc"
  cidr                 = "10.100.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
# Create an Aviatrix AWS Gateway
resource "aviatrix_gateway" "test_gateway_aws" {
  cloud_type   = 1
  account_name = "AWS-Aviatrix"
  gw_name      = "avtx-gw-1"
  vpc_id       = "vpc-02ca8503abfcf007a"
  vpc_reg      = "us-west-1"
  gw_size      = "t2.micro"
  subnet       = "10.100.0.0/16"
  tags         = {
    name = "value"
  }
}
