# Linux Host Enumeration Using Ansible

This is a set of Ansible roles tailored to facilitate the listing of Linux machines, with the aim to examine likely security and setup-oriented concerns. The project was developed as a proof-of-concept and for individual educational and practical purposes.

## Requirements

- [Qemy](https://www.qemu.org/)
- [Libvirt](https://libvirt.org/)
- [Vagrant](https://www.vagrantup.com/)
- [Vagrant-libvirt plugin](https://vagrant-libvirt.github.io/vagrant-libvirt/configuration.html)
- [Ansible](https://docs.ansible.com/)

## Start Virtual Machines

```bash
export LIBVIRT_DEFAULT_URI=qemu:///system
export VAGRANT_DEFAULT_PROVIDER=libvirt

vagrant up
```

## Deploy Test Software

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

ansible-playbook deploy-dvwa.yml
ansible-playbook deploy_docker_apps.yml

```

## Enumerate Hosts

The playbook creates `reports` directory where it stores details captured from remote hosts.

Features:

- Extensive Linux host enumeration using [LinPEAS](https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS) and [linux-smart-enumeration](https://github.com/diego-treitos/linux-smart-enumeration) tools;
- Dedicated Docker service enumeration and reporting;
- Recursive file hash calculation and tracking
- OpenSCAP reports.

```bash
ansible-playbook enum.yml
```

## References

- [Linux - Privilege Escalation Tools](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Linux%20-%20Privilege%20Escalation.md#tools)
- [Building Reports with Ansible](https://ansible.ninja/building-reports-with-ansible/)
- [Better Ansible job reports using Jinja + HTML](https://github.com/jwkenney/ansible-job-report)
- [How to Use Ansible to Install and Set Up Docker on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-docker-on-ubuntu-22-04)
- [Red5d/docker-autocompose](https://github.com/Red5d/docker-autocompose)
- [composerize](https://www.composerize.com/) Docker run to Docker-Compose
- [vulhub/vulhub](https://github.com/vulhub/vulhub)
- [Ultimate DevSecOps library](https://github.com/sottlmarek/DevSecOps)
- [How to show the run command of a docker container](https://stackoverflow.com/questions/32758793/how-to-show-the-run-command-of-a-docker-container)
- [lavie/runlike](https://github.com/lavie/runlike)
