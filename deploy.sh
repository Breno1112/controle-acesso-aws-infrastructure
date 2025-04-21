export AWS_PROFILE=brenofachini
terraform init
terraform validate
terraform plan -out deploy.tfplan -var-file="inventories/production.tfvars"
terraform apply deploy.tfplan -var-file="inventories/production.tfvars"
rm -rf deploy.tfplan