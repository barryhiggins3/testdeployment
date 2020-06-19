provider "azurerm" {
  version = ">= 2.0"
  #tenant_id = ""
  #subscription_id = ""
  features {}
}
terraform {
  backend "azurerm" {
    storage_account_name = "modalitytfstate"
    container_name       = "tfstate"
    key                  = "example.terraform.tfstate"
  }
}
module "landingzone" {
  source   = "github.com/barryhiggins3/terraformhack"
  resname = "example"
  resname2 = "example2"
  network_resourcegroup_name = "RG_Network_Test"
  security_centre_RG_Name = "RG_Sec_Centre"
}
