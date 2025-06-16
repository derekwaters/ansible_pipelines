# ansible_pipelines
Repository of components for building a modern software dev process for Ansible development

# Setup git template repo
    # basic structure
    # init script
    # .pre-commit-config.yaml
- Setup dev environment
    - ansible-lint
    - custom ansible-lint rules
    - precommit
- Setup github
    - Branch Protection for 'test', 'preprod', 'prod'
    - GitHub hooks for push and merge to trigger AAP workflows
- Setup AAP
    - Workflow for 'push pipeline'
        - precommit
        - variable-assertion-testing
        - molecule
        - deploy to AAP 'dev' instance
    - Workflow for 'merge pipeline'
        - Branch based on target branch
    - Workflow for 'test pipeline'
        - precommit
        - variable-assertion-testing
        - molecule
        - raise CR for non-prod change
        - sign the branch with testing Cert
        - AAP deployment to test
    - Workflow for 'prod pipeline'
        - precommit
        - variable-assertion-testing
        - molecule
        - validate source branch has been signed with test cert
        - raise prod CR
        - AAP deployment to preprod
        - perform preprod TVT
        - merge to prod
        - sign the branch with prod cert
        - AAP deployment to prod
- Create workflow to setup new team
    - Copy and create the github repo for the team
        community.general.github_repo
    - Apply branch protection
        https://docs.github.com/en/rest/repos/rules?apiVersion=2022-11-28#create-a-repository-ruleset
        https://api.github.com/repos/derekwaters/ansible-lint-custom-rules/rulesets/6047967
        
    - Setup webhooks