# Kubeflow 1.6.1 on AKS 1.24.6

## Note 

Folder manifest is a direct clone from https://github.com/kubeflow/manifests.git branch 1.61.\
Fill free to reclone if you like.
The only thing I edited is manifest/common/user-namespace/base/params.env : \
Change line 2 from :
```
profile-name=kubeflow-user-example-com
```
To
```
profile-name=kubeflow-admin-example-com
```


## Step by step 
1. Clone this repo and open this folder within a dev container instance (VS code or Github codespace), This will allow you to have all the prerequisite installed : make, git, azcli, kubectl, kustomize.
1. Copy .env.sample and create your own .env
1. Run : 
```
az login
```

4. If you have multiple subscriptions, make sure you select the right one :
```
az account set --subscription SUBSCRIPTIONID
```

5. Run :
```
make all
```
Notice : this will build RG + AKS + Kubeflow. If you don't want that you can run make deploy-kubeflow only for example.

6. To expose Kubeflow, run either
```
make port-forward
```
or
```
make expose-loadbalancer
```

7. Connect using :\
username : user@example.com\
password : 12341234

## Improvments to Consider
This is only a proof of concept focus on Kubeflow installation, you should consider :
- Improving user authentication
- Improving network : setup AKS within a private network and set up a private IP for Istio load balancer


