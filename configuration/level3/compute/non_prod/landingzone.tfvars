landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "connectivity_vNet_non_prod"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}