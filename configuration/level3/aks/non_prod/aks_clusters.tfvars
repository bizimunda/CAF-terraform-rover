aks_clusters = {
  cluster_re1 = {
    name               = "akscluster-re1-001"
    resource_group_key = "aks_re1"
    os_type            = "Linux"

    identity = {
      type = "SystemAssigned"
    }

    vnet_key = "vnet1"
    lz_key   = "connectivity_vNet_non_prod"

    network_profile = {
      network_plugin    = "azure"
      load_balancer_sku = "Standard"
    }

    # enable_rbac = true
    role_based_access_control = {
      enabled = true
      azure_active_directory = {
        managed = true
      }
    }

    addon_profile = {
      oms_agent = {
        enabled           = true
        log_analytics_key = "central_logs_region1"
      }
    }
    # admin_groups = {
    #   # ids = []
    #   # azuread_groups = {
    #   #   keys = []
    #   # }
    # }

    load_balancer_profile = {
      # Only one option can be set
      managed_outbound_ip_count = 1
    }

    default_node_pool = {
      vnet = {
        key    = "vnet1"
        lz_key = "connectivity_vNet_non_prod"
      }
      name                  = "sharedsvc"
      vm_size               = "Standard_F4s_v2"
      subnet_key            = "web"
      enabled_auto_scaling  = false
      enable_node_public_ip = false
      max_pods              = 30
      node_count            = 1
      os_disk_size_gb       = 512
      tags = {
        "project" = "system services"
      }
    }

    node_resource_group_name = "aks-nodes-re1"

    addon_profile = {
      azure_keyvault_secrets_provider = {
        secret_rotation_enabled  = true
        secret_rotation_interval = "2m"
      }
    }
  }
}
