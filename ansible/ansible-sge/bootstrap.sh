#!/bin/bash
echo "Bootstrapping ..."

if [ -f /etc/debian_version ] ; then
  echo "Install Debian/Ubuntu packages for Ansible ..."
  sudo apt-get install -y software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  sudo apt-get update -y
  sudo apt-get install -y ansible
elif [ -f /etc/redhat-release ] ; then
  echo "Install CentOS packages for Ansible ..."
  sudo yum update -y
  # ansible is in EPEL
  sudo yum install -y epel-release
  sudo yum install -y ansible
fi

echo "Bootstrapping done"
