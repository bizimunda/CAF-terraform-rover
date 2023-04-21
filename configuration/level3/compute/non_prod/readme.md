
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t cirbdevoteam.onmicrosoft.com

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/compute/non_prod \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate level3_compute_non_prod.tfstate \
  -env cafterraform2 \
  -level level3 \
  -w tfstate \
  -p ${TF_DATA_DIR}/level3_compute_non_prod.tfstate.tfplan \
  -a plan


  on success



rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/compute/non_prod \
  -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
  -tfstate level3_compute_non_prod.tfstate \
  -env cafterraform2 \
  -level level3 \
  -w tfstate \
  -p ${TF_DATA_DIR}/level3_compute_non_prod.tfstate.tfplan \
  -a apply


# rover \
#   -lz /tf/caf/landingzones/caf_solution \
#   -var-folder /tf/caf/configuration/level3/compute/non_prod \
#   -tfstate_subscription_id acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
#   -target_subscription acb8c319-e54d-4a8b-a40f-e478c37b3f89 \
#   -tfstate level3_compute_non_prod.tfstate \
#   -env cafterraform2 \
#   -level level3 \
#   -w tfstate \
#   -a destroy






```

