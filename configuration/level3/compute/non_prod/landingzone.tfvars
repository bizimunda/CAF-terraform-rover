landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "virtual_machine"
  global_settings_key = "connectivity_vNet_non_prod"
  tfstates = {
    management = {
      tfstate   = "connectivity_vNet_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}