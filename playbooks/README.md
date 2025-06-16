
# Example usage
ansible-playbook -i localhost \
  -e aap_hostname=something \
  -e aap_username=something \
  -e aap_password=something \
  -e github_username=something \
  -e github_token=something \
  setup_aap.yaml