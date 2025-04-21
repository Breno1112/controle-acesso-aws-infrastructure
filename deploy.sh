echo Compilando lambda
./build_lambda.sh
echo Lambda compilado com sucesso
export AWS_PROFILE=brenofachini
terraform init
terraform validate
terraform plan -var-file="inventories/production.tfvars" -out deploy.tfplan
terraform apply -var-file="inventories/production.tfvars" deploy.tfplan
rm -rf deploy.tfplan