terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "8.0.0"
    }
    account={
        source = "ans-group/account"
        version = "1.0.0"
    } 
    abrha = {
      source = "abrhacom/abrha"
      version = "1.3.3"
    }
github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  
  }
}


provider "aws" { 
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}


provider "azurerm" {
  
}
provider "github" {
  token = ""
}

 
