#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "Visual Studio Enterprise Subscription – MPN"
    create_alias    = false
    subscription_id = "acb8c319-e54d-4a8b-a40f-e478c37b3f89"
  }
  identity = {
    name            = "Visual Studio Enterprise Subscription – MPN"
    create_alias    = false
    subscription_id = "acb8c319-e54d-4a8b-a40f-e478c37b3f89"
  }
  connectivity = {
    name            = "Visual Studio Enterprise Subscription – MPN"
    create_alias    = false
    subscription_id = "acb8c319-e54d-4a8b-a40f-e478c37b3f89"
  }
  management = {
    name            = "Visual Studio Enterprise Subscription – MPN"
    create_alias    = false
    subscription_id = "acb8c319-e54d-4a8b-a40f-e478c37b3f89"
  }
}