
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t cirbdevoteam.onmicrosoft.com -s acb8c319-e54d-4a8b-a40f-e478c37b3f89

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-id-qmx.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate identity.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan


  on success

  rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-id-qmx.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate identity.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a apply

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
