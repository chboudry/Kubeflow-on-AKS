az aks create -g $RESOURCE_GROUP_NAME -n $AKS_NAME -s $AGENT_SIZE -c $AGENT_COUNT -l $LOCATION --kubernetes-version $AKS_VERSION --generate-ssh-keys
