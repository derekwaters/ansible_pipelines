
# Example usage
```
ansible-playbook -i inventory \
  -e aap_hostname=something \
  -e aap_username=something \
  -e aap_password=something \
  (-e aap_validate_certs=true) \
  -e github_username=something \
  -e github_api_token=something \
  -e github_hmac_token=something \
  -e key_signing_test_public_key=gpg_public_key_data \
  -e key_signing_test_passphrase=gpg_passphrase \
  -e key_signing_test_private_key=gpg_private_key_data \
  -e key_signing_preprod_public_key=gpg_public_key_data \
  -e key_signing_preprod_passphrase=gpg_passphrase \
  -e key_signing_preprod_private_key=gpg_private_key_data \
  -e key_signing_prod_public_key=gpg_public_key_data \
  -e key_signing_prod_passphrase=gpg_passphrase \
  -e key_signing_prod_private_key=gpg_private_key_data \
  setup_aap.yaml
```


If you want to use GenAI-driven code intent checking, also define the following vars:

```
  -e ai_endpoint=https://openai-api-compatible-endpoint.com/v1 \
  -e ai_token=token \
  -e ai_model_name=llm_name \
```

# Example of building the pipeline ee
```
ansible-playbook -i inventory \
  -e base_registry_username=<username> \
  -e base_registry_password=<password> \
  -e registry_destination=<image_target> \
  build_ees.yaml
```