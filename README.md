# Getting started with the demo scenario

1- Clone this github repository

2- Start three VM (all of them are connected through a bridge (192.168.100.0/24) by internal eth1 interface):
* `vagrant up remote-01`: Basic VM used as an external remote host
* `vagrant up docker-01`: A VM with Docker v.1.12.1 installed
* `vagrant up docker-02`: A VM with Docker v.1.12.1 installed

3- Run and enjoy the 4 demos!
* Demo1: Explore basic Docker networking default behaviour - Run `./demo-docker-basic.sh`inside Docker-01 host (`vagrant ssh docker-01`)
* Demo2: Play with basic network commands - Run `./demo-docker-network.sh`inside Docker-01  
* Demo3: Create overlay networking usign Swarm cluster between hosts Docker-01 and Docker-02 - Run `./demo-docker-swarm-01.sh`inside Docker-01  and `./demo-docker-swarm-02.sh`inside Docker-02 (start in Docker-01)
* Demo4: Validate macvlan network mode in Docker - Run `./demo-docker-macvlan.sh`inside Docker-01 and try to reach external Remote-01 host

# Materials for Docker networking Presentation

Here's an explanation of the files in this repository (some of them are not used in this demo):

* `ansible.cfg`: This is an Ansible configuration file that helps Ansible work better with Vagrant.

* `demo-script.md`: This document contains the step-by-step instructions for each demo.

* `docker-aliases`: Source this Bash script to create some aliases that will simplify running the commands from the demo script. This file is provisioned into the Docker VM by Ansible.

* `docker-setup.sh`: This script creates the necessary Docker networks and pulls down any required Docker images. It's provisioned into the VM by Ansible.

* `docker.yml`: This Ansible playbook provisions the Docker VM used in the demo; it's called automatically by Vagrant.

* `kvm-aliases`: Source this Bash script to create some aliases that will simplify running the commands from the demo script. Ansible is responsible for provisioning this file into the KVM host.

* `kvm-setup.sh`: This script creates the necessary Libvirt networks for the demo. This file is provisioned into the KVM host by Ansible.

* `kvm.yml`: This Ansible playbook provisions the KVM host used in the demo. The playbook is called by the Vagrant Ansible provisioner.

* `launch-vm.sh`: This script launches a CirrOS-based VM for use in the demo. Ansible copies this file into the KVM host.

* `LICENSE`: The license for this repository.

* `machines.yml`: This YAML data file controls Vagrant by specifying the machines, boxes, configuration, IP addressing, and Ansible playbooks used by Vagrant when the VMs are provisioned.

* `macvtap.xml`: This is Libvirt network XML used to define the macvtap-based Libvirt network. It's provisioned into the KVM host by Ansible, and called by `kvm-setup.sh`. Ansible copies this file into the KVM host.

* `ns-aliases`: Source this Bash script to create some aliases that will simplify running the commands from the demo script. This file is copied into the namespace VM by Ansible.

* `ns.yml`: This Ansible playbook is called by the Vagrant provisioner and is responsible for provisioning the VM used for the network namespace demo.

* `README.md`: This file you're currently reading.

* `remote-setup.sh`: This Bash script sets up the remote target VM used for connectivity tests during the demo. Ansible copies this file into the remote target VM during provisioning.

* `remote.yml`: This Ansible playbook provisions the remote target VM used for connectivity tests during the demo.

* `Vagrantfile`: Used by Vagrant to instantiate and configure the VMs according to configuration details stored in `machines.yml`.
