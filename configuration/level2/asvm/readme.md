# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t cirbdevoteam.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-idl0-wrj.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env cafterraform2 \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan



on success, run this command



rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-idl0-wrj.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env cafterraform2 \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a apply

```

