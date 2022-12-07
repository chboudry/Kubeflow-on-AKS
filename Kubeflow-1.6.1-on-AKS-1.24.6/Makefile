# git clone -b v1.6-branch https://github.com/kubeflow/manifests.git
SHELL:=/bin/bash
MAKEFILE_FULLPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKEFILE_DIR := $(dir $(MAKEFILE_FULLPATH))
target_title = @echo -e "\n\e[34m»»» \e[96m$(1)\e[0m..."

all : create-rg setup-aks deploy-kubeflow expose-loadbalancer

create-rg: 
	$(call target_title, "Create Resource Group") \
	&& . ${MAKEFILE_DIR}/load_env.sh .env \
	&& . ./create_rg.sh

setup-aks: 
	$(call target_title, "setup-aks") \
	&& . ${MAKEFILE_DIR}/load_env.sh .env \
	&& . ./setup_aks.sh

deploy-kubeflow: 
	$(call target_title, "deploy-kubeflow") \
	&& . ${MAKEFILE_DIR}/load_env.sh .env \
	&& cd ${MAKEFILE_DIR}/manifests \
	&& . ${MAKEFILE_DIR}/deploy_kubeflow.sh

expose-loadbalancer:
	$(call target_title, "expose-loadbalancer") \
	&& . ${MAKEFILE_DIR}/load_env.sh .env \
	&& cd ${MAKEFILE_DIR}/manifests \
	&& . ${MAKEFILE_DIR}/expose_loadbalancer.sh

port-forward:
	$(call target_title, "port-forward") \
	&& . ${MAKEFILE_DIR}/load_env.sh .env \
	&& cd ${MAKEFILE_DIR}/manifests \
	&& . ${MAKEFILE_DIR}/port_forward.sh