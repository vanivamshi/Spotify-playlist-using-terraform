# to connect terraform with cloud providers such as azure, aws, kubernetes, we define terraform as a provides
# here we are using spotify provider (from official website) - as we are doing for spotify
# terraform provider - https://registry.terraform.io/providers/conradludgate/spotify/latest

# define provider
terraform {
  required_providers {
    spotify = {
      source = "conradludgate/spotify"
      version = "0.2.7"
    }
  }
}

provider "spotify" {
  # Configuration options
  api_key = var.api_key
}

