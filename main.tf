terraform {
  required_version = ">= 1.4.6"

   backend "azurerm" {
    resource_group_name  = "tfprpipeline-rg"
    storage_account_name = "tfprpipelinesa"
    container_name       = "terraform"
    key                  = "PR/createprworkitem.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.2"
    }   
  }
}
provider "azurerm" {
  features {}
  skip_provider_registration = true
}