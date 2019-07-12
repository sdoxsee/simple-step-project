# https://medium.com/@timhberry/learn-terraform-by-deploying-a-google-kubernetes-engine-cluster-a29071d9a6c2
gcloud iam service-accounts create terraform --display-name "Terraform"
gcloud projects add-iam-policy-binding simple-step-project --member serviceAccount:terraform@simple-step-project.iam.gserviceaccount.com --role roles/editor
gcloud iam service-accounts keys create tf-credentials.json --iam-account terraform@simple-step-project.iam.gserviceaccount.com
mkdir creds
mv tf-credentials.json creds/
echo -e "creds/*\n.terraform/*\n" >> .gitignore
gcloud services enable container.googleapis.com
terraform init
terraform plan
terraform apply
terraform destroy