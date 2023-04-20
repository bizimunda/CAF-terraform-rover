
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Visual Studio Enterprise Subscription – MPN with the user hamid.muhammad.rafe.qureshi_devoteam.be#EXT#@cirbdevoteam.onmicrosoft.com
rover login -t cirbdevoteam.onmicrosoft.com -s acb8c319-e54d-4a8b-a40f-e478c37b3f89

az account clear
rover logout
rover login

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-scp-gct.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate platform_subscriptions.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan


  on success, run this command

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-scp-gct.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate platform_subscriptions.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a apply

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)