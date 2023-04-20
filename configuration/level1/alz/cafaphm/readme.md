# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to 2203.0

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t cirbdevoteam.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-es-pfs.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/cafaphm \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate alz_cafaphm.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_cafaphm.tfstate.tfplan \
  -a plan

  
  
  
  
  
  
  on success

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-es-pfs.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/cafaphm \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate alz_cafaphm.tfstate \
  -env cafterraform2 \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_cafaphm.tfstate.tfplan \
  -a apply

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
