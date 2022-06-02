module "transit_firenet_1" {
  source  = "terraform-aviatrix-modules/aws-transit-firenet/aviatrix"
  version = "5.0.0"

  cidr           = "10.1.0.0/20"
  region         = "eu-west-1"
  account        = "AWS"
  firewall_image = "Fortinet FortiGate (BYOL) Next-Generation Firewall"
}
