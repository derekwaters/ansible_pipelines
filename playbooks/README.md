
# Example usage
```
ansible-playbook -i inventory \
  -e aap_hostname=something \
  -e aap_username=something \
  -e aap_password=something \
  (-e aap_validate_certs=true) \
  -e github_username=something \
  -e github_api_token=something \
  -e key_signing_passphrase=gpg_passphrase \
  -e key_signing_private_key=gpg_private_key_data \
  setup_aap.yaml
```


# Example of building the pipeline ee
```
ansible-playbook -i inventory \
  -e base_registry_username=<username> \
  -e base_registry_password=<password> \
  -e registry_destination=<image_target> \
  build_ees.yaml
```