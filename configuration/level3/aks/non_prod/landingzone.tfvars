landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "key_aks"
  global_settings_key = "connectivity_vNet_non_prod"
  tfstates = {
    connectivity_vNet_non_prod = {
      tfstate   = "connectivity_vNet_non_prod.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
  # tfstates = {
  #   launchpad = {
  #     tfstate   = "launchpad"
  #     workspace = "tfstate"
  #     level     = "lower"
  #   }
  # }
}
