# dev-local
Local workstation development environment wrapper

# Instruction for Dev-Local ENV setup with Ansible and Terraform

1. Update ansible-grafana-env-vars.yml 
1. run ansible-playbook ansible/dev-grafana.yml
1. Navigate terraform folder
1. terraform init
1. terraform plan
1. terraform apply

Make sure when you redeploy env and want clean setup remove .terraform folder

## Future Improvements
Add docker compose for env in its own folder
Add Ansible Playbooks special tags and clean reset option for whole setup
