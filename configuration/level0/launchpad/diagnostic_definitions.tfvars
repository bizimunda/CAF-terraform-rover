
#
# Define a set of settings for the various type of Azure resources
#

diagnostics_definition = {
  log_analytics = {
    name = "log_analytics_def"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        # ["Audit", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }

  }

  # default_all = {
  #   name = "operational_logs_and_metrics"
  #   categories = {
  #     log = [
  #       # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
  #       ["AuditEvent", true, false, 7],
  #     ]
  #     metric = [
  #       #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
  #       ["AllMetrics", true, false, 7],
  #     ]
  #   }

  # }

  azure_kubernetes_cluster = {
    name = "kubernetes_logs_def"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["kube-apiserver", true, false, 7],
        ["kube-audit", true, false, 7],
        ["kube-audit-admin", true, false, 7],
        ["kube-controller-manager", true, false, 7],
        ["kube-scheduler", true, false, 7],
        ["cluster-autoscaler", true, false, 7],
        ["guard", true, false, 7],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, false, 7],
      ]
    }
  }

  # compliance_all = {
  #   name = "compliance_logs"
  #   categories = {
  #     log = [
  #       # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
  #       ["AuditEvent", true, true, 365],
  #     ]
  #     metric = [
  #       #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
  #       ["AllMetrics", false, false, 7],
  #     ]
  #   }

  # }

  # siem_all = {
  #   name = "siem"
  #   categories = {
  #     log = [
  #       # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
  #       ["AuditEvent", true, true, 0],
  #     ]

  #     metric = [
  #       #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
  #       ["AllMetrics", false, false, 0],
  #     ]
  #   }

  # }

  # subscription_operations = {
  #   name = "subscription_operations"
  #   categories = {
  #     log = [
  #       # ["Category name",  "Diagnostics Enabled(true/false)"]
  #       ["Administrative", true],
  #       ["Security", true],
  #       ["ServiceHealth", true],
  #       ["Alert", true],
  #       ["Policy", true],
  #       ["Autoscale", true],
  #       ["ResourceHealth", true],
  #       ["Recommendation", true],
  #     ]
  #   }
  # }

  # subscription_siem = {
  #   name = "activity_logs_for_siem"
  #   categories = {
  #     log = [
  #       # ["Category name",  "Diagnostics Enabled(true/false)"]
  #       ["Administrative", false],
  #       ["Security", true],
  #       ["ServiceHealth", false],
  #       ["Alert", false],
  #       ["Policy", true],
  #       ["Autoscale", false],
  #       ["ResourceHealth", false],
  #       ["Recommendation", false],
  #     ]
  #   }

  # }

}