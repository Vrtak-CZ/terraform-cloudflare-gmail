terraform {
  required_version = ">= 0.13.7"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 3.9.0"
    }
  }
}
