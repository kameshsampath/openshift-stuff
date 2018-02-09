#!/bin/bash
APB3="`which python3` `which ansible-playbook`"
$APB3 -i inv-centos.txt -e @extra_vars.yml ~/git/openshift-ansible/playbooks/prerequisites.yml -vvv
$APB3 -i inv-centos.txt -e @extra_vars.yml ~/git/openshift-ansible/playbooks/deploy_cluster.yml -vvv
