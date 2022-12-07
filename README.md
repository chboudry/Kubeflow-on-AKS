# Kubeflow-on-AKS

![Kubeflow](docs/Kubeflow.png)

## Motivation
Packaged Kubeflow distribution is currently obsolete for AKS. \
 Last Kubeflow packaged version for AKS is 1.2 which does not support higher than Kubernetes 1.21.\
 AKS follows kubernetes release cadence and supports only the [last three minor versions of Kubernetes](https://learn.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#aks-kubernetes-release-calendar). \
 We can no longer deploy AKS with a Kubernetes version of 1.21.\
 This means we need to install Kubeflow manually.

 ## How To
 You will find as part of this repo the combination I tried that worked. Select the one you like and build from there.
