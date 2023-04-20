
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t cirbdevoteam.onmicrosoft.com -s acb8c319-e54d-4a8b-a40f-e478c37b3f89

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-mg-dxf.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/management \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate management.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan


  on success,

  rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-mg-dxf.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/management \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate management.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a apply

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
