# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
    config.ssh.insert_key = false
  
    config.vm.synced_folder ".", "/vagrant", disabled: true
  
    config.vm.provider :libvirt do |v|
      # v.memory = 256
      # v.linked_clone = true
    end

    config.vm.define "alma9" do |guest|
        guest.vm.provider "libvirt" do |vm|
            vm.memory = 1024
            vm.cpus = 2
        end

        guest.vm.box = "generic/alma9"
        guest.vm.hostname = "alma9"
        guest.vm.network :private_network, :ip => "192.168.122.18"
    end

    config.vm.define "ubuntu2004" do |guest|
        guest.vm.provider "libvirt" do |vm|
            vm.memory = 1024
            vm.cpus = 2
        end

        guest.vm.box = "generic/ubuntu2004"
        guest.vm.hostname = "ubuntu2004"
        guest.vm.network "private_network", ip: "192.168.122.31"
    end
  
  end