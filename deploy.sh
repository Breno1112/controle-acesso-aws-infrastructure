export AWS_PROFILE=brenofachini
terraform init
terraform validate
terraform plan -out deploy.tfplan
terraform apply deploy.tfplan
rm -rf deploy.tfplan