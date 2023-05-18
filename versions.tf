terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    twingate = {
      source  = "Twingate/twingate"
      version = "1.1.0-rc1"
    }
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.54.0-beta0"
    }
  }
}