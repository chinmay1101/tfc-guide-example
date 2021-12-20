terraform {
  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = "~> 2.90.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }

  required_version = ">= 0.14.0"
}
