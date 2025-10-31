# ansible_pipelines
Repository of components for building a modern software dev process for Ansible development

## Repo Contents
This repo contains the following components:

- aap_configuration : This folder contains the definitions of playbooks used in the pipeline workflow, and all of the config-as-code definitions to deploy the pipelines to AAP
- ee_configuration : This folder contains config-as-code definitions for the execution environments required for the build pipelines
- playbooks : This folder contains a set of playbooks which can be used to build the execution environments, deploy the pipelines and setup a new team git repo to trigger the build pipeline
- template_git_repo : This folder contains a "template" code repo which can be copied for a new tenant team for the AAP build pipelines
- test : This folder only contains testing files

## Prerequisites
Building the pipelines requires an AAP install and credentials with the ability to deploy the config-as-code components. You will also need access details for an image repository if you are going to build the execution environments yourself. Finally you will need GPG signing keys that will be used to sign the ansible code once it is tested. See below for details on how to generate and export the relevant keys.

## Generate signing keys
```
gpg --full-generate-key

gpg --output public.pgp --armor --export username@email   (This will be used to verify deployment of a project)

gpg --output private.pgp --armor --export-secret-key username@email     (This will be used to sign a pipeline-approved project)
```