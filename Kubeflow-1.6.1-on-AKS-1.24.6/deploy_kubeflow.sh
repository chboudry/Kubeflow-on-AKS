az aks get-credentials --resource-group $RESOURCE_GROUP_NAME --name $AKS_NAME --admin
while ! kustomize build example | kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done
