# Hello-graylog

## Follow the steps below to deploy

Create storage account for tfstate backend

Fill in the subscription ID `subscription_id`, Resource group `resource_group` and Service Pricipal credentials `aks_service_principal_app_id`, `aks_service_principal_client_secret`  in below files:
```
/aks/provider.tf
/aks/vars/aks-swoom-test.tfvars
/rg/provider.tf
/rg/vars/rg-swoom-test.tfvars
```

### Create/Import RG

Navigate into rg/ dir and run the following commands to create your resource group
```
terraform init
terraform plan -var-file vars/rg-swoom-test.tfvars
terraform apply -var-file vars/rg-swoom-test.tfvars
```
Type `yes` in response to the prompt

### Create the AKS Cluster

Run the `ssh-keygen -m PEM -t rsa -b 4096` command to create an SSH key. Press the `Enter` key to select defaults.

Navigate into aks/ dir and run the following commands to deploy the aks cluster
```
terraform init
terraform plan -var-file vars/aks-swoom-test.tfvars
terraform apply -var-file vars/aks-swoom-test.tfvars
```

Type `yes` in response to the prompt

_Note: It may take a couple of minutes to deploy your resources._

_You will see a big block of text appear, which should mean that your cluster deployed successfully._

Run the `echo "$(terraform output kube_config)" > ../azurek8s` command to move your kube_config to a different file.

Run `cat ../azurek8s` to check the file. You should see EOT at the beginning and end of the file, which will need to be removed.

Run `vim ../azurek8s` to edit the file.

Delete the <<EOT at the beginning and the EOT at the end of the file.

Type Esc followed by `:wq` to save and quit the file.

Run `export KUBECONFIG=../azurek8s` to create your environment variable.

Run `kubectl get nodes` to check if your nodes are running and healthy.

You should see your 3 nodes returned with a STATUS of Ready

### Deploy the workload

Navigate into the /workload dir and run the following commands to deploy workload:
```
kubectl create namespace graylog
kubectl apply -f app_deployment.yaml
kubectl apply -f app_svc.yaml
```

