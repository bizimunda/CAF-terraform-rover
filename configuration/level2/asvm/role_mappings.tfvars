
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "53f0e81f-5331-4b3f-89f8-11698f848dac", // caf_platform_maintainers
              "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "53f0e81f-5331-4b3f-89f8-11698f848dac", // caf_platform_maintainers
              "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "53f0e81f-5331-4b3f-89f8-11698f848dac", // caf_platform_maintainers
              "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "53f0e81f-5331-4b3f-89f8-11698f848dac", // caf_platform_maintainers
              "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "91c05eb3-816d-4ffd-bf31-fe8c7ea4a25e" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
