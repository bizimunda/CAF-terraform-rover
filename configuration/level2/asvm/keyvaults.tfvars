
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "cafterraform2"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "d5c0b320-c388-4f03-b3dc-725f4a810223"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "53f0e81f-5331-4b3f-89f8-11698f848dac"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "cafterraform2"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "d5c0b320-c388-4f03-b3dc-725f4a810223"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "53f0e81f-5331-4b3f-89f8-11698f848dac"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
