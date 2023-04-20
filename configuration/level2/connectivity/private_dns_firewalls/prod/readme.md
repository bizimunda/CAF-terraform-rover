
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t cirbdevoteam.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://cafap-kv-co-fii.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/private_dns_firewalls/prod \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate connectivity_private_dns_firewalls_prod.tfstate \
  -env cafterraform2 \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_private_dns_firewalls_prod.tfstate.tfplan \
  -a plan

```

